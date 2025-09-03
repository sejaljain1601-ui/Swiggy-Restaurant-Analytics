-- 1.	List all restaurants located in Bangalore.

SELECT Restaurant_Name
FROM Restaurant_Data
WHERE City = 'Bangalore';


--  2.	Show restaurants with an average rating above 4.0.

SELECT Avg_Ratings, Restaurant_Name
FROM Restaurant_Data
WHERE Avg_Ratings > 4.0
ORDER BY Avg_Ratings DESC;


-- 3.	Find all restaurants that serve Chinese food.

SELECT Restaurant_Name
FROM  Restaurant_Data
WHERE Food_Type LIKE '%Chinese%'; 


-- 4.	Find the top 5 restaurants with the highest total ratings.

SELECT Restaurant_Name, Total_Ratings
FROM Restaurant_Data
ORDER BY Total_Ratings DESC
LIMIT 5;


-- 5.	Show the number of restaurants available in each city.

SELECT COUNT(Restaurant_Name) AS Restaurant_Count, City
FROM Restaurant_Data
GROUP BY City
ORDER BY Restaurant_Count DESC; 


-- 6.	Identify restaurants with delivery time greater than 60 minutes.

SELECT Restaurant_Name, Delivery_Time_Minutes
FROM Restaurant_Data
WHERE Delivery_Time_Minutes > 60
ORDER BY Delivery_Time_Minutes DESC;


-- 7.	List restaurants that are both budget-friendly and highly rated.

SELECT Restaurant_Name, Average_Price_INR, Avg_Ratings
FROM Restaurant_Data
WHERE Average_Price_INR < 300 AND Avg_Ratings > 4.2
ORDER BY Average_Price_INR, Avg_Ratings;


-- 8.   Which restaurants in Chennai and Hyderabad offer both North Indian and South Indian cuisines.

SELECT City, Food_Type
FROM Restaurant_Data
WHERE City IN ('Chennai', 'Hyderabad')
      AND Food_Type LIKE '%South Indian%'
	  AND Food_Type LIKE '%North Indian%'
ORDER BY City;


-- 9.	Find the restaurants with the highest rating in each city.

SELECT r.City, r.Restaurant_Name, r.Avg_Ratings
FROM Restaurant_Data AS r
JOIN (
    SELECT City, MAX(Avg_Ratings) AS MaxRating
    FROM Restaurant_Data
    GROUP BY City
) AS top_rated
ON r.City = top_rated.City AND r.Avg_Ratings = top_rated.MaxRating
ORDER BY r.City;


-- 10.	Identify restaurants whose rating is above the average rating of their city.

SELECT r.Restaurant_Name, r.City, r.Avg_Ratings, c.City_Avg
FROM Restaurant_Data AS r
JOIN (
    SELECT City, ROUND(AVG(Avg_Ratings),2) AS City_Avg
    FROM Restaurant_Data
    GROUP BY City
) c ON r.City = c.City
WHERE r.Avg_Ratings > c.City_Avg
ORDER BY r.City;














       
       
       





      
      
      
      






















