SELECT
    d.district_name,
    r.region_name,
    rr.actual_rainfall,
    rr.normal_rainfall
FROM rainfall_record rr
JOIN district d
    ON rr.district_id = d.district_id
JOIN region r
    ON d.region_id = r.region_id;