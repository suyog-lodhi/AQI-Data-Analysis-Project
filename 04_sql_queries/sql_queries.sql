-- 1. Overall Average AQI

SELECT 
	ROUND(AVG(Avg_AQI)) AS Overall_AQI 
FROM pollution ;


-- 2. Maximum AQI Recorded In The Year

SELECT 
	ROUND(MAX(Worst_pollutant),0) AS Maximum_AQI 
FROM pollution;


-- 3. Average worst AQI

SELECT 
	ROUND(AVG(Worst_pollutant),0) AS AVG_Worst_AQI 
FROM pollution;


-- 4 STATION WITH HIGHEST AVERAGE AQI

SELECT 
	station_name AS Station , 
	ROUND(AVG(Avg_AQI),0) AS Highest_AVG_AQI 
FROM pollution 
	GROUP BY 
        station_name
	ORDER BY
        Highest_AVG_AQI DESC ;



-- 5 STATION WISE AQI RANGE

SELECT 
	station_name , 
	ROUND(MIN(avg_aqi),0) AS Minimum_AVG_AQI,
	ROUND(MAX(Avg_AQI),0) AS Maximum_AVG_AQI 
FROM pollution
	GROUP BY 
        station_name ;

-- 6 MONTHLY AVERAGE AQI

SELECT 
	MONTH(date) AS Month_number , 
	MONTHNAME(date) as Month_Name , 
	ROUND(AVG(Avg_AQI),0) AS Average_AQI 
FROM pollution
	GROUP BY 
        MONTHNAME(date),
        MONTH(date)
	ORDER BY 
        Month_number ASC;

-- 7 MOTNHS WITH HIGHEST AQI

SELECT 
	station_name AS Station , 
	MONTHNAME(date) AS Month_Name , 
	ROUND(MAX(Worst_pollutant),0) AS Highest_AQI 
FROM pollution
	GROUP BY 
        MONTHNAME(date), 
        station_name
	ORDER BY 
		Highest_AQI DESC
	LIMIT 5 ;

-- 8 Most dominating pollutant overall

SELECT 
	pollutant_name AS Pollutant_Name, 
	COUNT(pollutant_name) AS Pollutant_Frequency 
FROM POLLUTION
	GROUP BY 
		pollutant_name
	ORDER BY 
		Pollutant_Frequency DESC ;



-- 9. Dominating pollutant by month

SELECT 
    month_no,
    month_name,
    pollutant_name,
    freq
FROM (
    SELECT 
        MONTH(`date`) AS month_no,
        MONTHNAME(`date`) AS month_name,
        pollutant_name,
        COUNT(*) AS freq,
        RANK() OVER (
            PARTITION BY MONTH(`date`)
            ORDER BY COUNT(*) DESC
        ) AS rnk
    FROM pollution
		GROUP BY MONTH(`date`), MONTHNAME(`date`), pollutant_name
) t
WHERE rnk = 1
	ORDER BY month_no;

-- 10. Frequency of AQI categories

SELECT 
	AQI_Category , 
    COUNT(*) AS Category_frequency 
FROM pollution
	GROUP BY  
		AQI_Category 
	ORDER BY 
		Category_frequency DESC ;

-- 11. STATION WISE AQI CATEGORY FREQUENCY 

SELECT 
	station_name , 
	AQI_Category, 
	count(*) AS Category_Frequency 
FROM pollution 
	GROUP BY 
		station_name, 
		AQI_Category 
	ORDER BY 
		station_name , 
		Category_Frequency DESC ;

-- 12. AVERAGE AQI BY WEEKDAY

SELECT 
	DAYOFWEEK(date) AS Day_no, 
	DAYNAME(date) AS Day_name , 
	ROUND(AVG(Avg_AQI),0) AS Avg_AQI 
FROM pollution
	GROUP BY 
		Day_no, 
		Day_name
	ORDER BY 
		Day_no ;

-- 13. Top 10 worst AQI days

SELECT 
    `date`,
    ROUND(Avg_AQI,0) AS Avg_AQI,
    worst_pollutant,
    pollutant_name
FROM pollution
ORDER BY Avg_AQI DESC
LIMIT 10;