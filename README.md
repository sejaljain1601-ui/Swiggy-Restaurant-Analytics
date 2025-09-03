# Swiggy-Restaurant-Analytics (SQL + Power BI Project)

## Project Overview
This project analyses restaurant-level data from Swiggy, highlighting trends in ratings, cuisine types, and delivery performance.  
Built with SQL and Power BI, it transforms raw data into actionable insights for business optimization and user experience.

---
## Database Schema
The project contains one main table:

**Restaurants_Data** -
`Restaurant_ID`, `Area`, `City`, `Restaurant_Name`, `Average_Price`_INR, `Avg_Ratings`, `Total_Ratings`, `Food_Type`, `Address`, `Delivery_Time_Minutes`

---
## SQL Scripts
The repository includes one SQL script with 10 analysis queries:

- `01_create_database_swiggy.sql` — Creates the Swiggy database/schema.
- `02_create_table_swiggy.sql` — Creates the `Restaurant_Data` table with columns, data types, and any primary/unique keys or indexes.
- `03_data_cleaning_swiggy.sql` — Data cleaning & preprocessing steps (e.g., normalize `Food type`, handle NULLs, remove duplicates).
- `04_queries_swiggy.sql` — Contains all 10 analysis queries used for exploration and reporting.

---
## Key Queries & Analysis
The repository includes the following queries with explanations:

**1. List all restaurants located in Bangalore** – Retrieves restaurant names filtered by city.  

**2. Show restaurants with an average rating above 4.0** – Identifies top-rated restaurants across cities.  

**3. Find all restaurants that serve Chinese food** – Filters restaurants offering Chinese cuisine.  

**4. Find the top 5 restaurants with the highest total ratings** – Shows the most popular restaurants by total user ratings.  

**5. Show the number of restaurants available in each city** – Aggregates restaurant counts city-wise.  

**6. Identify restaurants with delivery time greater than 60 minutes** – Highlights restaurants with high delivery times.  

**7. List restaurants that are both budget-friendly and highly rated** – Combines price and rating filters to find value-for-money options.  

**8. Restaurants in Chennai and Hyderabad offering both North Indian and South Indian cuisines** – Finds multi-cuisine restaurants in selected cities.  

**9. Find the restaurants with the highest rating in each city** – Retrieves the best-rated restaurant per city.  

**10. Identify restaurants whose rating is above the average rating of their city** – Compares restaurant ratings with city-level averages.  

---
## Power BI Dashboard
The project includes one interactive Power BI dashboard with the following key visualizations:

- **Cuisine Distribution Count Across Cities** – Shows which cuisines dominate each city.  
- **Top Rated Delivery Zones** – Highlights areas with the best-rated restaurants.  
- **City-wise Average Price & Delivery Trends** – Analyzes affordability and delivery efficiency across cities.  
- **City-level Ratings vs. Price** – Compares restaurant quality and pricing.  
- **Swiggy’s Finest (5-star Restaurants)** – Displays the top-rated premium restaurants.  

---
## Insights & Findings
- **Cuisine Diversity – Kolkata & Mumbai**  
  Both cities show the widest variety of cuisines.  
  → Indicates strong customer demand for diverse food options and opportunities for new restaurant categories.

- **High-Rated Areas – Bangalore**  
  Bangalore leads with the highest number of high-rated zones.  
  → Suggests competitive restaurant quality and tech-driven urban consumers with higher expectations.

- **Top-Rated Restaurants – Mumbai**  
  Mumbai dominates in highest-rated restaurants overall.  
  → Reflects premium dining culture, strong service quality, and brand trust.

- **Pricing & Delivery Efficiency – Mumbai**  
  Mumbai has the highest average pricing but the lowest delivery time.  
  → Shows a mature food delivery ecosystem where customers accept premium costs in exchange for speed and reliability.

- **Delivery Challenges – Kolkata**  
  Kolkata records the highest average delivery time.  
  → May indicate traffic bottlenecks, high restaurant density, or inefficiencies in logistics requiring improvement.

- **Restaurant Volume – Kolkata**  
  Kolkata has the highest number of restaurants.  
  → Highlights market potential, but also signals fragmented competition and strain on delivery networks.
  
## Repository Structure
Swiggy_Restaurant_Analytics/

├── `01_create_database_swiggy.sql`  

├── `02_create_table_swiggy.sql` 

├── `03_data_cleaning_swiggy.sql`  

├── `04_queries_swiggy.sql`  

├── `Swiggy_Dashboard.pbix`      # Power BI dashboard 

└── `README.md`                  # Project overview, schema, queries, dashboard, insights

---
**AUTHOR**  

Sejal Jain – SQL, Power BI & Data Analysis Enthusiast  

•	GitHub: [SejalJain1601-ui](https://github.com/sejaljain1601-ui)  

•	LinkedIn: [Sejal Jain](www.linkedin.com/in/sejal-jain-lko) 
