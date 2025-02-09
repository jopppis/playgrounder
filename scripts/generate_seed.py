import csv
import re


def clean_html(raw_html):
    # Extract URL from href
    url_match = re.search(r'href="([^"]+)"', raw_html)
    return url_match.group(1) if url_match else ""


def process_csv():
    header = """-- Create extension if not exists
CREATE EXTENSION IF NOT EXISTS postgis;

-- Clear existing data
TRUNCATE TABLE playgrounds CASCADE;

-- Import playgrounds
INSERT INTO playgrounds (name, address, location, description, service_level)
VALUES
"""

    values = []
    with open("/tmp/playgrounds.csv", "r") as f:
        reader = csv.DictReader(f)
        for row in reader:
            # Extract coordinates from WKT
            coords = re.search(r"POINT \((\d+\.?\d*) (\d+\.?\d*)\)", row["geom"])
            if not coords:
                continue

            x, y = coords.groups()

            # Clean up URLs
            link_fi = clean_html(row["Link_fi"] or "")
            link_en = clean_html(row["Link_en"] or "")

            # Format description
            description_parts = []
            if row["Selite_fi"]:
                description_parts.append(row["Selite_fi"])
            if link_fi:
                description_parts.append(link_fi)
            if row["Selite_en"]:
                description_parts.append(row["Selite_en"])
            if link_en:
                description_parts.append(link_en)

            description = "\\n".join(description_parts)

            # Determine service level based on name
            name = row["Name_fi"]
            service_level = 1 if "Leikkipuisto" in name else 2

            value = f"""    (
        {repr(name)},
        {repr(row["Address_fi"] or "")},
        ST_Transform(ST_SetSRID(ST_MakePoint({x}, {y}), 3879), 4326),
        E{repr(description)},
        {service_level}
    )"""
            values.append(value)

    with open("supabase/seed.sql", "w") as f:
        f.write(header)
        f.write(",\n".join(values))
        f.write(";\n")


def generate_prompt_data():
    prompts = [
        {
            "id": "1",
            "title": "Basic Chat",
            "description": "This is a basic chat prompt.\nIt supports multiple lines.\nEach line should display correctly.",
            "model_config": {"temperature": 0.7},
        },
        # ... other prompts ...
    ]
    return prompts


if __name__ == "__main__":
    process_csv()
