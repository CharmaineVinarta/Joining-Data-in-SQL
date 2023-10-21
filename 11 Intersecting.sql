-- Return all city names that are also country names.

-- Return all cities with the same name as a country
SELECT name FROM cities
INTERSECT
SELECT name FROM countries;
