-- Perform an appropriate set operation that determines all pairs of country code and year (in that order) from economies and populations, excluding duplicates.
-- Order by country code and year.

-- Query that determines all pairs of code and year from economies and populations, without duplicates
SELECT code, year FROM economies
UNION
SELECT country_code, year FROM populations
ORDER BY code, year;

-- Amend the query to return all combinations (including duplicates) of country code and year in the economies or the populations tables
SELECT code, year
FROM economies
-- Set theory clause
UNION ALL
SELECT country_code, year
FROM populations
ORDER BY code, year;
