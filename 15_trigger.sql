INSERT INTO rainfall_record
    (district_id, actual_rainfall, normal_rainfall)
VALUES
    (1, -10, 500);

SELECT COUNT(*) AS total_records
FROM rainfall_record;