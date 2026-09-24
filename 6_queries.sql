SELECT
    d.district_name,
    rr.actual_rainfall
FROM rainfall_record rr
JOIN district d
    ON rr.district_id = d.district_id
WHERE rr.actual_rainfall >
(
    SELECT AVG(rr2.actual_rainfall)
    FROM rainfall_record rr2
);