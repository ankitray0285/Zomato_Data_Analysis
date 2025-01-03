       -- Database Creation and table creation with questions.
       
                           -- Zomato Data analysis Using SQL 

CREATE DATABASE Restaurant;
USE Restaurant;
CREATE TABLE Zomato_Data (
    RestaurantID INT PRIMARY KEY,
    RestaurantName VARCHAR(255),
    CountryCode INT,
    City VARCHAR(100),
    Address VARCHAR(255),
    Locality VARCHAR(100),
    LocalityVerbose VARCHAR(255),
    Cuisines VARCHAR(255),
    Currency VARCHAR(50),
    Has_Table_booking BOOLEAN,
    Has_Online_delivery BOOLEAN,
    Is_delivering_now BOOLEAN,
    Price_range INT,
    Votes INT,
    Average_Cost_for_two FLOAT,
    Rating FLOAT
);

             -- Beginner Level
-- 1. How many total restaurants are in the dataset?
-- 2. cities have restaurants listed in the dataset?
-- 3. What is the number of restaurants in each city?
-- 4. Which restaurants have a rating above 4.0?
-- 5. Are there any missing data points in the dataset? 

                    
                    -- Intermediate Level
                    
-- 1. Which cities have the highest average ratings?
-- 2. What is the average cost for two people in each price range?
-- 3. What are the most popular cuisines across the dataset?
-- 4. Which city has the most restaurants offering online delivery?
-- 5. Which restaurants are affordable (cost < 500) and have high ratings (rating > 4.5)?
-- 6. Which restaurants offer both online delivery and table booking?
-- 7. What currencies are used by restaurants in different countries?

                    -- Advanced Level
-- 1. What is the correlation between the number of votes and ratings?
-- 2. Which localities have the highest average restaurant ratings?
-- 3. What are the most common cuisines in high-price range restaurants?
-- 4. What are the top-ranked restaurants in each city based on votes?
-- 5. Which is the top-rated restaurant in each city?
-- 6. Which restaurants are currently delivering and have a rating above 4.0?
-- 7. What are the uncommon cuisines listed in the dataset (cuisines with fewer than 5 restaurants)?

