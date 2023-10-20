-- Join the tables countries AS c (left) with economies (right), aliasing economies AS e.
-- Next, use code as your joining field
-- Lastly, select the following columns in order: code from the countries table (aliased as country_code), name, year, and inflation_rate.

-- Select fields with aliases
SELECT c.code AS country_code, c.name, e.year, e.inflation_rate
FROM countries AS c

-- Join to economies (alias e)
INNER JOIN economies AS e 

-- Match on code field using table aliases
ON c.code = e.code


-- Use the country code field to complete the INNER JOIN with USING; do not change any alias names.
SELECT c.name AS country, l.name AS language, official
FROM countries AS c
INNER JOIN languages AS l
-- Match using the code column
USING (code)
