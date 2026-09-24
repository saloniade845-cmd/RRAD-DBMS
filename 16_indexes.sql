EXPLAIN
SELECT
    d.district_name,
    rr.actual_rainfall
FROM rainfall_record rr IGNORE INDEX (idx_actual_rainfall)
JOIN district d
    ON rr.district_id = d.district_id
WHERE rr.actual_rainfall > 500;