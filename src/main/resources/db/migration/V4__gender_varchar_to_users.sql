-- db/migration/V2__gender_varchar_to_users.sql
ALTER TABLE users
ALTER COLUMN gender TYPE VARCHAR(50);