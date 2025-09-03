-- Step 1: Preview raw data. 

SELECT * FROM restaurant_data;

-- Step 2: Fix formatting in Food_Type (replace double spaces with comma+space)

UPDATE Restaurant_Data
SET Food_Type = REPLACE(Food_Type, '  ', ', ');

-- Step 3: Remove leading and trailing spaces in Food_Type.

UPDATE Restaurant_Data
SET Food_Type = TRIM(Food_Type);

-- Step 4: Delete rows that are completely empty.

DELETE FROM restaurant_data
WHERE Restaurant_Id IS NULL
  AND Area IS NULL
  AND City IS NULL
  AND Restaurant_Name IS NULL 
  AND Average_Price_INR IS NULL
  AND Avg_Ratings IS NULL
  AND Total_Ratings IS NULL
  AND Food_Type IS NULL
  AND Address IS NULL
  AND Delivery_Time_Minutes IS NULL;
  
-- Step 5: Identify duplicate restaurants with the same city.

WITH RankedRestaurants AS (
    SELECT *,
           ROW_NUMBER() OVER (
               PARTITION BY City, Restaurant_Name
           ) AS rn
    FROM restaurant_data
)
SELECT *
FROM RankedRestaurants
WHERE rn > 1; 

-- Step 6: Delete duplicate restaurants.

WITH RankedRestaurants AS (
    SELECT *,
           ROW_NUMBER() OVER (
               PARTITION BY City, Restaurant_Name
           ) AS rn
    FROM restaurant_data
)
DELETE FROM restaurant_data
WHERE Restaurant_Id IN (
    SELECT Restaurant_Id
    FROM RankedRestaurants
    WHERE rn > 1
);











  
  










