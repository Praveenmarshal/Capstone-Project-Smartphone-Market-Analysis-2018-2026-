#1️--Average Rating by Brand

SELECT Brand, ROUND(AVG(Avg_Rating),2) AS avg_rating
FROM clean_mobile_dataset
GROUP BY Brand
ORDER BY avg_rating DESC;


#2-Most Expensive Phones

SELECT Model_Name, Brand, Price_INR
FROM clean_mobile_dataset
ORDER BY Price_INR DESC
LIMIT 10;

#3-Cheapest Phones

SELECT Model_Name, Brand, Price_INR
FROM clean_mobile_dataset
ORDER BY Price_INR ASC
LIMIT 10;

#4-Highest Rated Phones

SELECT Model_Name, Brand, Avg_Rating
FROM clean_mobile_dataset
ORDER BY Avg_Rating DESC
LIMIT 10;

#5-Total Reviews by Brand

SELECT Brand, SUM(Total_Reviews) AS total_reviews
FROM clean_mobile_dataset
GROUP BY Brand
ORDER BY total_reviews DESC;

#6-Average Price by Brand

SELECT Brand, ROUND(AVG(Price_INR),0) AS avg_price
FROM clean_mobile_dataset
GROUP BY Brand
ORDER BY avg_price DESC;

#7-Phones With Best Battery

SELECT Model_Name, Brand, Battery_mAh
FROM clean_mobile_dataset
ORDER BY Battery_mAh DESC
LIMIT 10;

#8-Phones With Best Cameras

SELECT Model_Name, Brand, Back_Camera_MP
FROM clean_mobile_dataset
ORDER BY Back_Camera_MP DESC
LIMIT 10;

#9-5G vs Non-5G Phones
SELECT `5G_Support`, COUNT(*) AS total_phones
FROM clean_mobile_dataset
GROUP BY `5G_Support`;

#10-Average Rating by Launch Year

SELECT Launch_Year, ROUND(AVG(Avg_Rating),2) AS avg_rating
FROM clean_mobile_dataset
GROUP BY Launch_Year
ORDER BY Launch_Year;

#11-Most Reviewed Phones
SELECT Model_Name, Brand, Total_Reviews
FROM clean_mobile_dataset
ORDER BY Total_Reviews DESC
LIMIT 10;

#12-Brand With Most Positive Reviews
SELECT Brand, SUM(Positive_Reviews) AS positive_reviews
FROM clean_mobile_dataset
GROUP BY Brand
ORDER BY positive_reviews DESC;

#13-Brand With Most Negative Reviews

SELECT Brand, SUM(Negative_Reviews) AS negative_reviews
FROM clean_mobile_dataset
GROUP BY Brand
ORDER BY negative_reviews DESC;

#14-Average Price by RAM

SELECT RAM_GB, ROUND(AVG(Price_INR),0) AS avg_price
FROM clean_mobile_dataset
GROUP BY RAM_GB
ORDER BY RAM_GB;

#15-Average Rating by RAM

SELECT RAM_GB, ROUND(AVG(Avg_Rating),2) AS avg_rating
FROM clean_mobile_dataset
GROUP BY RAM_GB
ORDER BY avg_rating DESC;

#16-Best Value Phones (High Rating + Low Price)

SELECT Model_Name, Brand, Price_INR, Avg_Rating
FROM clean_mobile_dataset
ORDER BY Avg_Rating DESC, Price_INR ASC
LIMIT 10;

#17-Average Battery by Brand

SELECT Brand, ROUND(AVG(Battery_mAh),0) AS avg_battery
FROM clean_mobile_dataset
GROUP BY Brand
ORDER BY avg_battery DESC;

#18-Number of Models per Brand

SELECT Brand, COUNT(*) AS total_models
FROM clean_mobile_dataset
GROUP BY Brand
ORDER BY total_models DESC;

#19-Best Budget Phones

SELECT Model_Name, Brand, Price_INR, Avg_Rating
FROM clean_mobile_dataset
WHERE Avg_Rating >= 4.5 AND Price_INR < 30000
ORDER BY Avg_Rating DESC;

#20-Overall Sentiment Summary

SELECT
SUM(Positive_Reviews) AS positive_reviews,
SUM(Neutral_Reviews) AS neutral_reviews,
SUM(Negative_Reviews) AS negative_reviews
FROM clean_mobile_dataset;