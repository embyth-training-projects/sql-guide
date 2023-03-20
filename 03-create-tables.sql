-- PostgreSQL + ENUM => We have to create a custom type first
CREATE TYPE employment_status AS ENUM('employed', 'self-employed', 'unemployed');

CREATE TABLE users (
  id SERIAL PRIMARY KEY, -- PostgreSQL
  -- id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
  full_name VARCHAR(200),
  yearly_salary INT,
  -- current_status ENUM('employed', 'self-employed', 'unemployed') -> MySQL enum syntax
  current_status employment_status
);

CREATE TABLE employers (
  id SERIAL PRIMARY KEY, -- PostgreSQL
  -- id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
  company_name VARCHAR(200),
  company_address VARCHAR(300),
  -- yearly_revenue FLOAT(5,2) -- Approximation, Allowed: 123.45, 12.3; Not allowed: 1234.56, 1.234
  yearly_revenue NUMERIC(5, 2), -- Exact value, Allowed: 123.45; Not allowed: 12345,123
  is_hiring BOOLEAN DEFAULT FALSE
);

CREATE TABLE conversations (
  id SERIAL PRIMARY KEY, -- PostgreSQL
  -- id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
  user_id INT,
  employer_id INT,
  message TEXT,
  date_sent TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
