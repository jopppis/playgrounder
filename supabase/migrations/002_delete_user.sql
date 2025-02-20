-- Create a function to delete a user and their associated data
CREATE or replace function delete_user()
    returns void
    LANGUAGE SQL SECURITY DEFINER
    SET search_path = public
AS $$
    delete from auth.users where id = auth.uid();
$$;

-- Grant execute permission to authenticated users
GRANT EXECUTE ON FUNCTION delete_user() TO authenticated;
