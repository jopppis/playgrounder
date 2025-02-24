-- Create user_filters table
CREATE TABLE user_filters (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    user_id UUID REFERENCES auth.users(id) ON DELETE CASCADE,
    visit_status TEXT CHECK (visit_status IN ('visited', 'unvisited')),
    min_stars INTEGER CHECK (min_stars >= 1 AND min_stars <= 5),
    min_user_stars INTEGER CHECK (min_user_stars >= 1 AND min_user_stars <= 5),
    has_supervised_activities BOOLEAN,
    city TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc'::text, NOW()) NOT NULL,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT TIMEZONE('utc'::text, NOW()) NOT NULL,
    UNIQUE(user_id)
);

-- Create index for faster lookups
CREATE INDEX idx_user_filters_user ON user_filters(user_id);

-- Enable Row Level Security (RLS)
ALTER TABLE user_filters ENABLE ROW LEVEL SECURITY;

-- Create policies
CREATE POLICY "Users can view their own filters"
    ON user_filters FOR SELECT
    USING (auth.uid() = user_id);

CREATE POLICY "Users can insert their own filters"
    ON user_filters FOR INSERT
    WITH CHECK (auth.uid() = user_id);

CREATE POLICY "Users can update their own filters"
    ON user_filters FOR UPDATE
    USING (auth.uid() = user_id)
    WITH CHECK (auth.uid() = user_id);

CREATE POLICY "Users can delete their own filters"
    ON user_filters FOR DELETE
    USING (auth.uid() = user_id);

-- Create trigger to update updated_at
CREATE TRIGGER update_user_filters_updated_at
    BEFORE UPDATE ON user_filters
    FOR EACH ROW
    EXECUTE FUNCTION update_updated_at_column();
