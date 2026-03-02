-- HEALTHCARE ANALYTICS DATABASE

CREATE DATABASE healthcare_analysis;
USE healthcare_analysis;

SELECT * FROM metrohealth83;
DESCRIBE metrohealth83;
ALTER TABLE metrohealth83
MODIFY COLUMN City VARCHAR(150);

-- INDEXING 

CREATE INDEX idx_city ON metrohealth83(City);
CREATE INDEX idx_medicare ON metrohealth83(NumMedicare);
CREATE INDEX idx_mds_rate ON metrohealth83(RateMDs);


-- KPI ANALYSIS QUERIES


-- Average Physician Availability
SELECT 
    AVG(NumMDs) AS avg_physicians,
    AVG(RateMDs) AS avg_physician_rate
FROM metrohealth83;

-- Top 10 Cities by Physician Density
SELECT City, RateMDs
FROM metrohealth83
ORDER BY RateMDs DESC
LIMIT 10;

-- Cities with Highest Medicare Growth
SELECT City, PctChangeMedicare
FROM metrohealth83
ORDER BY PctChangeMedicare DESC
LIMIT 10;

-- Hospital Infrastructure Strength
SELECT 
    City,
    NumHospitals,
    NumBeds,
    RateBeds
FROM metrohealth83
ORDER BY RateBeds DESC;

-- Medicare Coverage Efficiency
SELECT 
    City,
    NumMedicare,
    MedicareRate
FROM metrohealth83
ORDER BY MedicareRate DESC;


-- ADVANCED SQL ANALYSIS


-- Cities by Bed Capacity
SELECT 
    City,
    NumBeds,
    RANK() OVER (ORDER BY NumBeds DESC) AS bed_rank
FROM metrohealth83;

-- High Medicare Growth Cities
WITH high_medicare AS (
    SELECT City, NumMedicare, PctChangeMedicare
    FROM metrohealth83
    WHERE PctChangeMedicare > 5
)
SELECT *
FROM high_medicare
ORDER BY PctChangeMedicare DESC;

-- Risk Segmentation Based on SSI Rate
SELECT 
    City,
    SSIRate,
    CASE
        WHEN SSIRate > 3000 THEN 'High Social Risk'
        WHEN SSIRate BETWEEN 1500 AND 3000 THEN 'Moderate Risk'
        ELSE 'Low Risk'
    END AS risk_category
FROM metrohealth83;

-- Physician to Hospital Ratio
SELECT 
    City,
    NumMDs / NumHospitals AS physician_hospital_ratio
FROM metrohealth83
ORDER BY physician_hospital_ratio DESC;

-- Retired Population Impact Analysis
SELECT 
    City,
    NumRetired,
    SSBRate,
    SSIRate
FROM metrohealth83
ORDER BY NumRetired DESC;


-- BUSINESS INSIGHT QUERIES

-- Identify under-resourced cities
SELECT 
    City,
    RateMDs,
    RateBeds
FROM metrohealth83
WHERE RateMDs < (SELECT AVG(RateMDs) FROM metrohealth83)
AND RateBeds < (SELECT AVG(RateBeds) FROM metrohealth83);

-- Correlation proxy: Medicare vs Retired Population
SELECT 
    City,
    NumRetired,
    NumMedicare
FROM metrohealth83
ORDER BY NumRetired DESC;


-- VIEW CREATION FOR DASHBOARD USE


CREATE OR REPLACE VIEW healthcare_kpi_summary AS
SELECT
    City,
    RateMDs,
    RateBeds,
    MedicareRate,
    SSIRate,
    PctChangeMedicare
FROM metrohealth83;