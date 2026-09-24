CREATE VIEW rainfall_summary AS
SELECT
    d.district_name,
    r.region_name,
    rr.actual_rainfall,
    rr.normal_rainfall,
    ROUND(
        ((rr.actual_rainfall - rr.normal_rainfall)
        / rr.normal_rainfall) * 100, 2
    ) AS percentage_departure
FROM rainfall_record rr
JOIN district d
    ON rr.district_id = d.district_id
JOIN region r
    ON d.region_id = r.region_id;