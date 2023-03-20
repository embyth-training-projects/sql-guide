-- Update columns data type
ALTER TABLE employers
ALTER COLUMN yearly_revenue
SET DATA TYPE FLOAT; -- PostgreSQL

ALTER TABLE employers
MODIFY COLUMN yearly_revenue FLOAT; -- MySQL

ALTER TABLE users
ALTER COLUMN full_name
SET DATA TYPE VARCHAR(300); -- PostgresSQL
ALTER TABLE users
MODIFY COLUMN full_name VARCHAR(300); -- MySQL

-- Add NOT NULL constraint
ALTER TABLE users
ALTER COLUMN full_name
SET NOT NULL,
  ALTER COLUMN current_status
SET NOT NULL; -- PostgreSQL

ALTER TABLE users
MODIFY COLUMN full_name VARCHAR(300) NOT NULL,
  MODIFY COLUMN current_status ENUM('employed', 'self-employed', 'unemployed') NOT NULL; -- MySQL

-- Add CHECK constraint
ALTER TABLE users
ADD CONSTRAINT yearly_salary_positive CHECK (yearly_salary > 0); -- PostgreSQL and MySQL
