-- Return the name, country_code and urbanarea_pop for all capital cities (not aliased).

-- Select relevant fields from cities table
SELECT name, country_code, urbanarea_pop
FROM cities

-- Filter using a subquery on the countries table
WHERE name IN
(SELECT capital
FROM countries)



ORDER BY urbanarea_pop DESC;
