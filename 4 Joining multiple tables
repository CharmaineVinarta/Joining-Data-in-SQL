-- Perform an inner join of countries AS c (left) with populations AS p (right), on code.
-- Select name, year and fertility_rate.

-- Select relevant fields
SELECT name, year, fertility_rate
-- Inner join countries and populations, aliased, on code
FROM countries AS c
INNER JOIN populations AS p
ON c.code = p.country_code

-- Chain another inner join to your query with the economies table AS e, using code.
-- Select name, and using table aliases, select year and unemployment_rate from economies.

-- Select fields
SELECT name, e.year, fertility_rate, e.unemployment_rate
FROM countries AS c
INNER JOIN populations AS p
ON c.code = p.country_code
-- Join to economies (as e)
INNER JOIN economies AS e
-- Match on country code
ON c.code = e.code;
