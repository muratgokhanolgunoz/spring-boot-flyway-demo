-- db/migration/V6__enumerated_gender_to_users.sql
DO $$ BEGIN
    CREATE TYPE gender_type AS ENUM ('Male', 'Female', 'Non-binary', 'Other');
EXCEPTION
    WHEN duplicate_object THEN NULL;
END $$;

ALTER TABLE users
ALTER COLUMN gender TYPE gender_type
    USING gender::gender_type;
