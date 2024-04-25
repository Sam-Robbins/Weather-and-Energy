-- Summary table for all energy sources
WITH EnergySourceSummary AS (
    -- ENERGY SOURCE: Total Fuel Used
    SELECT
        'Total Fuel Used' AS EnergySource,
        COUNT(*) AS NumDataPoints,
        AVG("Total Fuel Used (kWh per capita)") AS AvgFuelUsed,
        STDDEV("Total Fuel Used (kWh per capita)") AS StdDevFuelUsed,
        SUM("Total Fuel Used (kWh per capita)") AS TotalFuelUsed_MToe,
        MAX("Total Fuel Used (kWh per capita)") AS HighestFuelUsed,
        MIN("Total Fuel Used (kWh per capita)") AS LowestFuelUsed,
        PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY "Total Fuel Used (kWh per capita)") AS Percentile_25,
        PERCENTILE_CONT(0.50) WITHIN GROUP (ORDER BY "Total Fuel Used (kWh per capita)") AS Median,
        PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY "Total Fuel Used (kWh per capita)") AS Percentile_75
    FROM completedataset

    UNION ALL

    -- ENERGY SOURCE: Coal
    SELECT
        'Coal' AS EnergySource,
        COUNT(*) AS NumDataPoints,
        AVG("Coal (kWh per capita)") AS AvgFuelUsed,
        STDDEV("Coal (kWh per capita)") AS StdDevFuelUsed,
        SUM("Coal (kWh per capita)") AS TotalFuelUsed_MToe,
        MAX("Coal (kWh per capita)") AS HighestFuelUsed,
        MIN("Coal (kWh per capita)") AS LowestFuelUsed,
        PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY "Coal (kWh per capita)") AS Percentile_25,
        PERCENTILE_CONT(0.50) WITHIN GROUP (ORDER BY "Coal (kWh per capita)") AS Median,
        PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY "Coal (kWh per capita)") AS Percentile_75
    FROM completedataset

    UNION ALL

    -- ENERGY SOURCE: Oil
    SELECT
        'Oil' AS EnergySource,
        COUNT(*) AS NumDataPoints,
        AVG("Oil (kWh per capita)") AS AvgFuelUsed,
        STDDEV("Oil (kWh per capita)") AS StdDevFuelUsed,
        SUM("Oil (kWh per capita)") AS TotalFuelUsed_MToe,
        MAX("Oil (kWh per capita)") AS HighestFuelUsed,
        MIN("Oil (kWh per capita)") AS LowestFuelUsed,
        PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY "Oil (kWh per capita)") AS Percentile_25,
        PERCENTILE_CONT(0.50) WITHIN GROUP (ORDER BY "Oil (kWh per capita)") AS Median,
        PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY "Oil (kWh per capita)") AS Percentile_75
    FROM completedataset

    UNION ALL
    -- ENERGY SOURCE: Gas
    SELECT
    'Gas' AS EnergySource,
    COUNT(*) AS NumDataPoints,
    AVG("Gas (kWh per capita)") AS AvgFuelUsed,
    STDDEV("Gas (kWh per capita)") AS StdDevFuelUsed,
    SUM("Gas (kWh per capita)") AS TotalFuelUsed_MToe,
    MAX("Gas (kWh per capita)") AS HighestFuelUsed,
    MIN("Gas (kWh per capita)") AS LowestFuelUsed,
    PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY "Gas (kWh per capita)") AS Percentile_25,
    PERCENTILE_CONT(0.50) WITHIN GROUP (ORDER BY "Gas (kWh per capita)") AS Median,
    PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY "Gas (kWh per capita)") AS Percentile_75
    FROM completedataset

    UNION ALL
    -- ENERGY SOURCE: Nuclear
    SELECT
    'Nuclear' AS EnergySource,
    COUNT(*) AS NumDataPoints,
    AVG("Nuclear (kWh per capita)") AS AvgFuelUsed,
    STDDEV("Nuclear (kWh per capita)") AS StdDevFuelUsed,
    SUM("Nuclear (kWh per capita)") AS TotalFuelUsed_MToe,
    MAX("Nuclear (kWh per capita)") AS HighestFuelUsed,
    MIN("Nuclear (kWh per capita)") AS LowestFuelUsed,
    PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY "Nuclear (kWh per capita)") AS Percentile_25,
    PERCENTILE_CONT(0.50) WITHIN GROUP (ORDER BY "Nuclear (kWh per capita)") AS Median,
    PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY "Nuclear (kWh per capita)") AS Percentile_75
    FROM completedataset

    UNION ALL
    -- Energy Source - Hydro
    SELECT
    'Hydro' AS EnergySource,
    COUNT(*) AS NumDataPoints,
    AVG("Hydro (kWh per capita)") AS AvgFuelUsed,
    STDDEV("Hydro (kWh per capita)") AS StdDevFuelUsed,
    SUM("Hydro (kWh per capita)") AS TotalFuelUsed_MToe,
    MAX("Hydro (kWh per capita)") AS HighestFuelUsed,
    MIN("Hydro (kWh per capita)") AS LowestFuelUsed,
    PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY "Hydro (kWh per capita)") AS Percentile_25,
    PERCENTILE_CONT(0.50) WITHIN GROUP (ORDER BY "Hydro (kWh per capita)") AS Median,
    PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY "Hydro (kWh per capita)") AS Percentile_75
    FROM completedataset

    UNION ALL
    -- ENERGY SOURCE: Bioenergy
    SELECT
    'Bioenergy' AS EnergySource,
    COUNT(*) AS NumDataPoints,
    AVG("Bioenergy (kWh per capita)") AS AvgFuelUsed,
    STDDEV("Bioenergy (kWh per capita)") AS StdDevFuelUsed,
    SUM("Bioenergy (kWh per capita)") AS TotalFuelUsed_MToe,
    MAX("Bioenergy (kWh per capita)") AS HighestFuelUsed,
    MIN("Bioenergy (kWh per capita)") AS LowestFuelUsed,
    PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY "Bioenergy (kWh per capita)") AS Percentile_25,
    PERCENTILE_CONT(0.50) WITHIN GROUP (ORDER BY "Bioenergy (kWh per capita)") AS Median,
    PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY "Bioenergy (kWh per capita)") AS Percentile_75
    FROM completedataset

    UNION ALL

-- ENERGY SOURCE: Solar
    SELECT
    'Solar' AS EnergySource,
    COUNT(*) AS NumDataPoints,
    AVG("Solar (kWh per capita)") AS AvgFuelUsed,
    STDDEV("Solar (kWh per capita)") AS StdDevFuelUsed,
    SUM("Solar (kWh per capita)") AS TotalFuelUsed_MToe,
    MAX("Solar (kWh per capita)") AS HighestFuelUsed,
    MIN("Solar (kWh per capita)") AS LowestFuelUsed,
    PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY "Solar (kWh per capita)") AS Percentile_25,
    PERCENTILE_CONT(0.50) WITHIN GROUP (ORDER BY "Solar (kWh per capita)") AS Median,
    PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY "Solar (kWh per capita)") AS Percentile_75
    FROM completedataset

    UNION ALL

-- ENERGY SOURCE: Low Carbon
    SELECT
    'Low Carbon' AS EnergySource,
    COUNT(*) AS NumDataPoints,
    AVG("Low Carbon (kWh per capita)") AS AvgFuelUsed,
    STDDEV("Low Carbon (kWh per capita)") AS StdDevFuelUsed,
    SUM("Low Carbon (kWh per capita)") AS TotalFuelUsed_MToe,
    MAX("Low Carbon (kWh per capita)") AS HighestFuelUsed,
    MIN("Low Carbon (kWh per capita)") AS LowestFuelUsed,
    PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY "Low Carbon (kWh per capita)") AS Percentile_25,
    PERCENTILE_CONT(0.50) WITHIN GROUP (ORDER BY "Low Carbon (kWh per capita)") AS Median,
    PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY "Low Carbon (kWh per capita)") AS Percentile_75
    FROM completedataset

    UNION ALL
-- ENERGY SOURCE: Renewables
    SELECT
    'Renewables' AS EnergySource,
    COUNT(*) AS NumDataPoints,
    AVG("Renewables (kWh per capita)") AS AvgFuelUsed,
    STDDEV("Renewables (kWh per capita)") AS StdDevFuelUsed,
    SUM("Renewables (kWh per capita)") AS TotalFuelUsed_MToe,
    MAX("Renewables (kWh per capita)") AS HighestFuelUsed,
    MIN("Renewables (kWh per capita)") AS LowestFuelUsed,
    PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY "Renewables (kWh per capita)") AS Percentile_25,
    PERCENTILE_CONT(0.50) WITHIN GROUP (ORDER BY "Renewables (kWh per capita)") AS Median,
    PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY "Renewables (kWh per capita)") AS Percentile_75
    FROM completedataset

    UNION ALL

-- ENERGY SOURCE: Fossil Fuels
    SELECT
    'Fossil Fuels' AS EnergySource,
    COUNT(*) AS NumDataPoints,
    AVG("Fossil Fuels (kWh per capita)") AS AvgFuelUsed,
    STDDEV("Fossil Fuels (kWh per capita)") AS StdDevFuelUsed,
    SUM("Fossil Fuels (kWh per capita)") AS TotalFuelUsed_MToe,
    MAX("Fossil Fuels (kWh per capita)") AS HighestFuelUsed,
    MIN("Fossil Fuels (kWh per capita)") AS LowestFuelUsed,
    PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY "Fossil Fuels (kWh per capita)") AS Percentile_25,
    PERCENTILE_CONT(0.50) WITHIN GROUP (ORDER BY "Fossil Fuels (kWh per capita)") AS Median,
    PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY "Fossil Fuels (kWh per capita)") AS Percentile_75
    FROM completedataset

    UNION ALL

-- ENERGY SOURCE: Wind
    SELECT
    'Wind' AS EnergySource,
    COUNT(*) AS NumDataPoints,
    AVG("Wind (kWh per capita)") AS AvgFuelUsed,
    STDDEV("Wind (kWh per capita)") AS StdDevFuelUsed,
    SUM("Wind (kWh per capita)") AS TotalFuelUsed_MToe,
    MAX("Wind (kWh per capita)") AS HighestFuelUsed,
    MIN("Wind (kWh per capita)") AS LowestFuelUsed,
    PERCENTILE_CONT(0.25) WITHIN GROUP (ORDER BY "Wind (kWh per capita)") AS Percentile_25,
    PERCENTILE_CONT(0.50) WITHIN GROUP (ORDER BY "Wind (kWh per capita)") AS Median,
    PERCENTILE_CONT(0.75) WITHIN GROUP (ORDER BY "Wind (kWh per capita)") AS Percentile_75
    FROM completedataset)

SELECT * FROM EnergySourceSummary;

WITH HighestAndLowestConsumption AS (
    SELECT 'Coal' AS EnergySource,
           MIN("Coal (kWh per capita)") AS MinCoal,
           (SELECT "Date"FROM completedataset WHERE "Coal (kWh per capita)" = (SELECT MIN("Coal (kWh per capita)") FROM completedataset)) AS DateMinCoal,
           MAX("Coal (kWh per capita)") AS MaxCoal,
           (SELECT "Date" FROM completedataset WHERE "Coal (kWh per capita)" = (SELECT MAX("Coal (kWh per capita)") FROM completedataset)) AS DateMaxCoal
    FROM completedataset

    UNION ALL

    SELECT 'Oil' AS EnergySource,
           MIN("Oil (kWh per capita)") AS MinOil,
           (SELECT "Date" FROM completedataset WHERE "Oil (kWh per capita)" = (SELECT MIN("Oil (kWh per capita)") FROM completedataset)) AS DateMinOil,
           MAX("Oil (kWh per capita)") AS MaxOil,
           (SELECT "Date" FROM completedataset WHERE "Oil (kWh per capita)" = (SELECT MAX("Oil (kWh per capita)") FROM completedataset)) AS DateMaxOil
    FROM completedataset

)

select * from HighestAndLowestConsumption;