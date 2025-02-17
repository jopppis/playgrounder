import csv
import re


def process_csv():
    header = """-- Create extension if not exists
CREATE EXTENSION IF NOT EXISTS postgis;

-- Clear existing data
TRUNCATE TABLE playgrounds CASCADE;

-- Import playgrounds
INSERT INTO playgrounds (name, address, location, description, has_supervised_activities)
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
            description = ""
            # Determine if has supervised activities based on name
            name = row["Name_fi"]
            has_supervised = "Ohjattu leikkipuistotoiminta" in row["Selite_fi"]

            value = f"""    (
        {repr(name)},
        {repr(row["Address_fi"] or "")},
        ST_Transform(ST_SetSRID(ST_MakePoint({x}, {y}), 3879), 4326),
        E{repr(description)},
        {str(has_supervised).lower()}
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
