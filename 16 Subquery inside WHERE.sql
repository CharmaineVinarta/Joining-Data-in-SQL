-- Begin by calculating the average life expectancy from the populations table.
-- Filter your answer to use records from 2015 only.
  
-- Select average life_expectancy from the populations table
SELECT AVG(life_expectancy) 
FROM populations
-- Filter for the year 2015
WHERE year = 2015;

-- The answer from your query has now been nested into another query
-- use this calculation to filter populations for all records where life_expectancy is 1.15 times higher than average.

SELECT *
FROM populations
-- Filter for only those populations where life expectancy is 1.15 times higher than average
WHERE life_expectancy > 1.15 *
  (SELECT AVG(life_expectancy)
   FROM populations
   WHERE year = 2015) 
    AND year = 2015;
