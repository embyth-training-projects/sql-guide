-- Simple database creation with defaults
CREATE DATABASE talently;

-- For MySql we can use IF NOT EXISTS to check db existance and omit execution if db already exists (do not work in postgresql)
CREATE DATABASE IF NOT EXISTS talently;
