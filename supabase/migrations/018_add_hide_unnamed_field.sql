-- Add hideUnnamed column to user_filters table
ALTER TABLE user_filters
ADD COLUMN hide_unnamed BOOLEAN;
