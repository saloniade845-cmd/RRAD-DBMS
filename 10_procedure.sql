DELIMITER //

CREATE PROCEDURE get_region_rainfall(IN p_region_name VARCHAR(50))
BEGIN
    SELECT
        d.district_name,
        rr.actual_rainfall,
        rr.normal_rainfall
    FROM rainfall_record rr
    JOIN district d
        ON rr.district_id = d.district_id
    JOIN region r
        ON d.region_id = r.region_id
    WHERE r.region_name = p_region_name;
END //

DELIMITER ;

CALL get_region_rainfall('East Rajasthan');