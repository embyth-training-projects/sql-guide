-- Text
-- CHAR(X) - store text up to X characters; shorter text will be space padded
-- VARCHAR(X) - store text up to X character; shorter text will not be changed
-- TEXT, LONGTEXT, ... - text of any size can be stored without specifiy a max size first
-- ENUM - only values from a predefined set of allowed values are accepted

-- Numeric
-- INT, SMALLINT, ... - Integer numbers (between min and max boundaries) are allowed
-- DECIMAL, NUMERIC - decimal numbers with a fixed precision (exact values)
-- FLOAT, REAL - decimal numbers with floating points (approximated values)

-- Date
-- DATE - a value like 1986-10-20 (i.e. no hours or minutes)
-- DATETIME, TIMESTAMP - a value like 1986-10-20 14:39:05 (i.e. with hours, minutes etc.)

-- Other
-- BOOLEAN - true of false (0 or 1)
-- JSON - JSON-formatted text data
