-- db/migration/V8__insert_to_users.sql
INSERT INTO users (name, last_name, email, age, gender)
VALUES
  ('John', 'Doe', 'john.doe@example.com', 30, 'MALE'),
  ('Jane', 'Smith', 'jane.smith@example.com', 28, 'FEMALE'),
  ('Alex', 'Taylor', 'alex.taylor@example.com', 25, 'NON_BINARY'),
  ('Sam', 'Brown', 'sam.brown@example.com', 32, 'OTHER');