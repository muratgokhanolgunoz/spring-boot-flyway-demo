-- db/migration/V2__add_gender_to_users.sql
ALTER TABLE users ADD COLUMN gender CHAR;