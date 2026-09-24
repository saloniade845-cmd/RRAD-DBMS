DELIMITER //

CREATE TRIGGER check_rainfall_values
BEFORE INSERT ON rainfall_record
FOR EACH ROW
BEGIN
    IF NEW.actual_rainfall < 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Actual rainfall cannot be negative';
    END IF;

    IF NEW.normal_rainfall <= 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Normal rainfall must be greater than zero';
    END IF;
END //

DELIMITER ;