-- Add no_rating and no_user_rating columns to user_filters table
ALTER TABLE user_filters
ADD COLUMN no_rating BOOLEAN,
ADD COLUMN no_user_rating BOOLEAN;
