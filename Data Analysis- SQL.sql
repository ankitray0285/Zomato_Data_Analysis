SELECT * FROM restaurant.zomato_data;

-- Beginner Level
-- How many total restaurants are in the dataset?

SELECT COUNT(*) as total_restaurant FROM restaurant.zomato_data;

-- Which cities have restaurants listed in the dataset?

SELECT DISTINCT City FROM Zomato_Data;

-- What is the number of restaurants in each city?

SELECT City, COUNT(*) AS Restaurant_Count
FROM Zomato_Data
GROUP BY City
ORDER BY Restaurant_Count DESC;

-- Which restaurants have a rating above 4.0?

SELECT RestaurantName, Rating
FROM Zomato_Data
WHERE Rating > 4.0
ORDER BY Rating DESC;

-- Are there any missing data points in the dataset?

SELECT *
FROM Zomato_Data
WHERE Rating IS NULL OR Votes IS NULL;

-- Intermediate Level
-- Which cities have the highest average ratings?

SELECT City, AVG(Rating) AS Avg_Rating
FROM Zomato_Data
GROUP BY City
ORDER BY Avg_Rating DESC
LIMIT 10;

-- What is the average cost for two people in each price range?

SELECT Price_range, AVG(Average_Cost_for_two) AS Avg_Cost
FROM Zomato_Data
GROUP BY Price_range
ORDER BY Price_range;

-- What are the most popular cuisines across the dataset?


SELECT Cuisines, COUNT(*) AS Cuisine_Count
FROM Zomato_Data
GROUP BY Cuisines
ORDER BY Cuisine_Count DESC
LIMIT 10;

-- Which city has the most restaurants offering online delivery?

SELECT City, COUNT(*) AS Online_Delivery_Count
FROM Zomato_Data
WHERE Has_Online_delivery = TRUE
GROUP BY City
ORDER BY Online_Delivery_Count DESC;

-- Which restaurants are affordable (cost < 500) and have high ratings (rating > 4.5)?

SELECT RestaurantName, City, Rating, Average_Cost_for_two
FROM Zomato_Data
WHERE Rating > 4.5 AND Average_Cost_for_two < 500
ORDER BY Rating DESC;

-- Which restaurants offer both online delivery and table booking?

SELECT RestaurantName, City
FROM Zomato_Data
WHERE Has_Table_booking = TRUE AND Has_Online_delivery = TRUE;

-- What currencies are used by restaurants in different countries?
SELECT DISTINCT CountryCode, Currency
FROM Zomato_Data;

-- Advanced Level
-- What is the correlation between the number of votes and ratings?

SELECT Votes, AVG(Rating) AS Avg_Rating
FROM Zomato_Data
GROUP BY Votes
ORDER BY Votes DESC;

-- Which localities have the highest average restaurant ratings?

SELECT Locality, AVG(Rating) AS Avg_Rating
FROM Zomato_Data
GROUP BY Locality
HAVING AVG(Rating) > 4.0
ORDER BY Avg_Rating DESC;

-- What are the most common cuisines in high-price range restaurants?

SELECT Cuisines, COUNT(*) AS Cuisine_Count
FROM Zomato_Data
WHERE Price_range = 4
GROUP BY Cuisines
ORDER BY Cuisine_Count DESC;

-- What are the top-ranked restaurants in each city based on votes?

SELECT RestaurantName, City, Votes,
       RANK() OVER (PARTITION BY City ORDER BY Votes DESC) AS Rank
FROM Zomato_Data;

-- Which is the top-rated restaurant in each city?

SELECT RestaurantName, City, Rating
FROM (
    SELECT RestaurantName, City, Rating,
           ROW_NUMBER() OVER (PARTITION BY City ORDER BY Rating DESC) AS Row_Num
    FROM Zomato_Data
) AS Ranked
WHERE Row_Num = 1;

-- Which restaurants are currently delivering and have a rating above 4.0?

SELECT RestaurantName, City, Rating
FROM Zomato_Data
WHERE Is_delivering_now = TRUE AND Rating > 4.0
ORDER BY Rating DESC;

-- What are the uncommon cuisines listed in the dataset (cuisines with fewer than 5 restaurants)?

SELECT Cuisines, COUNT(*) AS Cuisine_Count
FROM Zomato_Data
GROUP BY Cuisines
HAVING COUNT(*) < 5;

-- Project End
                             -- Thank you

