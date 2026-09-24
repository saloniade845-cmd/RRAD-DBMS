INSERT INTO district (district_name, region_id)
SELECT 
    r.`State/Districts`,
    reg.region_id
FROM `rajasthan rainfall analytics database (rrad)` r
JOIN region reg
    ON r.Region = reg.region_name
WHERE r.`State/Districts` <> r.Region;

SELECT COUNT(*) FROM district;

SELECT district_name, region_id
FROM district
LIMIT 5;