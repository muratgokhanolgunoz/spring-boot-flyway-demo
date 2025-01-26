-- db/migration/V7__refactor_gender-type_enum_to_users
CREATE TYPE gender_type_new AS ENUM ('MALE', 'FEMALE', 'NON_BINARY', 'OTHER');

ALTER TABLE users
ALTER COLUMN gender TYPE gender_type_new
    USING gender::TEXT::gender_type_new;

DROP TYPE gender_type;

ALTER TYPE gender_type_new RENAME TO gender_type;
