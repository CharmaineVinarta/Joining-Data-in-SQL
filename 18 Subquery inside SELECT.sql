-- Write a LEFT JOIN with countries on the left and the cities on the right, joining on country code.
-- In the SELECT statement of your join, include country names as country, and count the cities in each country, aliased as cities_num.
-- Sort by cities_num (descending), and country (ascending), limiting to the first nine records.

-- Find top nine countries with the most cities
SELECT countries.name AS country, COUNT(*) AS cities_num
FROM countries
LEFT JOIN cities
ON countries.code = cities.country_code
GROUP BY country
-- Order by count of cities as cities_num
ORDER BY cities_num DESC, country
LIMIT 9;


-- Complete the subquery to return a result equivalent to your LEFT JOIN, counting all cities in the cities table as cities_num.
-- Use the WHERE clause to enable the correct country codes to be matched in the cities and countries columns.

SELECT countries.name AS country,
-- Subquery that provides the count of cities   
  (SELECT COUNT(*)
   FROM cities
   WHERE country_code = code) AS cities_num
FROM countries
ORDER BY cities_num DESC, country
LIMIT 9;
