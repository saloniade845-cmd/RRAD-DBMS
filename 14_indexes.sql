SELECT
    `State/Districts`,
    COUNT(*) AS observation_count
FROM `rajasthan rainfall analytics database (rrad)`
GROUP BY `State/Districts`
HAVING COUNT(*) > 1;