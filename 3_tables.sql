CREATE TABLE rainfall_record (
    record_id INT AUTO_INCREMENT PRIMARY KEY,
    district_id INT NOT NULL,
    actual_rainfall DECIMAL(6,1) NOT NULL,
    normal_rainfall DECIMAL(6,1) NOT NULL,

    FOREIGN KEY (district_id)
        REFERENCES district(district_id),

    CHECK (actual_rainfall >= 0),
    CHECK (normal_rainfall > 0)
);

SELECT COUNT(*) AS total_records
FROM rainfall_record;