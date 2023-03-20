-- Add entries to users table
INSERT INTO users (yearly_salary, full_name, current_status)
VALUES (19000, 'Alex Diver', 'employed');
INSERT INTO users (yearly_salary, full_name, current_status)
VALUES (24000, 'Mick Jagger', 'self-employed');
INSERT INTO users (full_name, current_status)
VALUES ('Max Fillerman', 'unemployed'); -- Ommiting yearly_salary value to fallback on null

-- Add entries to employers table
INSERT INTO employers (
    company_name,
    company_address,
    yearly_revenue,
    is_hiring
  )
VALUES (
    'Learning Inc',
    'Education street 12, London',
    0.75,
    TRUE
  );
INSERT INTO employers (
    company_name,
    company_address,
    yearly_revenue,
    is_hiring
  )
VALUES (
    'Big Oil Inc',
    'Slippery street 110, Huston',
    123.55,
    FALSE
  );
INSERT INTO employers (
    company_name,
    company_address,
    yearly_revenue,
    is_hiring
  )
VALUES (
    'Hipster Food',
    'Advocado street 5, Berlin',
    6.12,
    TRUE
  );

-- Add entries to conversations table
INSERT INTO conversations (user_id, employer_id, message, date_sent)
VALUES (
    3,
    3,
    'Hi, I would like to work with you!',
    '2023-03-20 19:56:34'
  );
