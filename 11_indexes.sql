CREATE INDEX idx_rainfall_district
ON rainfall_record(district_id);

EXPLAIN
SELECT
    d.district_name,
    rr.actual_rainfall
FROM rainfall_record rr
JOIN district d
    ON rr.district_id = d.district_id
WHERE rr.actual_rainfall > 500;

EXPLAIN
SELECT
    d.district_name,
    rr.actual_rainfall
FROM rainfall_record rr
JOIN district d
    ON rr.district_id = d.district_id
WHERE rr.actual_rainfall > 500;

DROP INDEX idx_rainfall_district ON rainfall_record;

SHOW INDEX FROM rainfall_record;

CREATE INDEX idx_actual_rainfall
ON rainfall_record(actual_rainfall);

EXPLAIN
SELECT
    d.district_name,
    rr.actual_rainfall
FROM rainfall_record rr
JOIN district d
    ON rr.district_id = d.district_id
WHERE rr.actual_rainfall > 500;