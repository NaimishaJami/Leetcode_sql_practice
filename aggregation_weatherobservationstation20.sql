--aggregation_weatherobservationstation20.sql
SELECT ROUND(MEDIAN(LAT_N), 4) AS median_latitude
FROM STATION;