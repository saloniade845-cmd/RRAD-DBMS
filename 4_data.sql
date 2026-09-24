INSERT INTO rainfall_record
    (district_id, actual_rainfall, normal_rainfall)
SELECT
    d.district_id,
    r.`Actual(mm)`,
    r.`Normal(mm)`
FROM `rajasthan rainfall analytics database (rrad)` r
JOIN district d
    ON d.district_name = r.`State/Districts`;

SELECT COUNT(*) AS total_records
FROM rainfall_record;