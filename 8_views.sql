CREATE VIEW region_rainfall_summary AS
SELECT
    r.region_name,
    COUNT(rr.record_id) AS district_count,
    ROUND(AVG(rr.actual_rainfall), 2) AS avg_actual_rainfall,
    ROUND(AVG(rr.normal_rainfall), 2) AS avg_normal_rainfall
FROM rainfall_record rr
JOIN district d
    ON rr.district_id = d.district_id
JOIN region r
    ON d.region_id = r.region_id
GROUP BY r.region_id, r.region_name;