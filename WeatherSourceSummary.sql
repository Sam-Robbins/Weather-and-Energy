WITH WeatherSourceSummary AS (
SELECT
        'Rainfall (mm)' AS WeatherSource,
        COUNT(*) AS NumDataPoints,
        AVG("Rainfall (mm)") AS AvgFuelUsed,
        STDDEV("Rainfall (mm)") AS StdDevFuelUsed,
        SUM("Rainfall (mm)") AS TotalFuelUsed_MToe,
        MAX("Rainfall (mm)") AS HighestFuelUsed,
        MIN("Rainfall (mm)") AS LowestFuelUsed,
        PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY "Rainfall (mm)") AS Percentile_25,
        PERCENTILE_CONT(0.50) WITHIN GROUP (ORDER BY "Rainfall (mm)") AS Median,
        PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY "Rainfall (mm)") AS Percentile_75
    FROM completedataset

    UNION ALL

    SELECT
        'Temperature (C)' AS WeatherSource,
        COUNT(*) AS NumDataPoints,
        AVG("Temperature (C)") AS AvgFuelUsed,
        STDDEV("Temperature (C)") AS StdDevFuelUsed,
        SUM("Temperature (C)") AS TotalFuelUsed_MToe,
        MAX("Temperature (C)") AS HighestFuelUsed,
        MIN("Temperature (C)") AS LowestFuelUsed,
        PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY "Temperature (C)") AS Percentile_25,
        PERCENTILE_CONT(0.50) WITHIN GROUP (ORDER BY "Temperature (C)") AS Median,
        PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY "Temperature (C)") AS Percentile_75
    FROM completedataset

    UNION ALL

    SELECT
        'Wind (Knots)' AS WeatherSource,
        COUNT(*) AS NumDataPoints,
        AVG("Wind (knots)") AS AvgFuelUsed,
        STDDEV("Wind (knots)") AS StdDevFuelUsed,
        SUM("Wind (knots)") AS TotalFuelUsed_MToe,
        MAX("Wind (knots)") AS HighestFuelUsed,
        MIN("Wind (knots)") AS LowestFuelUsed,
        PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY "Wind (knots)") AS Percentile_25,
        PERCENTILE_CONT(0.50) WITHIN GROUP (ORDER BY "Wind (knots)") AS Median,
        PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY "Wind (knots)") AS Percentile_75
    FROM completedataset

    UNION ALL

    SELECT
        'Sunshine (Hours)' AS WeatherSource,
        COUNT(*) AS NumDataPoints,
        AVG("Sunshine (hours)") AS AvgFuelUsed,
        STDDEV("Sunshine (hours)") AS StdDevFuelUsed,
        SUM("Sunshine (hours)") AS TotalFuelUsed_MToe,
        MAX("Sunshine (hours)") AS HighestFuelUsed,
        MIN("Sunshine (hours)") AS LowestFuelUsed,
        PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY "Sunshine (hours)") AS Percentile_25,
        PERCENTILE_CONT(0.50) WITHIN GROUP (ORDER BY "Sunshine (hours)") AS Median,
        PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY "Sunshine (hours)") AS Percentile_75
    FROM completedataset
)
SELECT * From WeatherSourceSummary;

