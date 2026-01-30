DROP TABLE IF EXISTS fact_monthly_delay_weather_hurricane;

CREATE TABLE fact_monthly_delay_weather_hurricane AS
SELECT
    -- keys
    d.airport,
    d.flight_month,
    d.year,
    d.month,
    d.carrier,
    d.carrier_name,

    -- airline delay metrics
    d.arr_flights,
    d.arr_del15,
    d.carrier_ct,
    d.weather_ct,
    d.nas_ct,
    d.security_ct,
    d.late_aircraft_ct,
    d.arr_cancelled,
    d.arr_diverted,
    d.arr_delay,
    d.carrier_delay,
    d.weather_delay,
    d.nas_delay,
    d.security_delay,
    d.late_aircraft_delay,

    -- WEATHER (uppercase column names MUST be quoted!)
    w."AWND" AS avg_wind_speed,
    w."PRCP" AS total_precip,
    w."SNOW" AS total_snow,
    w."TMAX" AS max_temp,
    w."TMIN" AS min_temp,
    w."TAVG" AS avg_temp,
    w."WSF2" AS max_2min_wind,
    w."WSF5" AS max_5sec_wind,
    w."AWBT" AS avg_wetbulb_temp,
    w."RHAV" AS avg_humidity,

    -- HURRICANES (monthly)
    h.n_storms,
    h.season,
    h.subbasin,
    h.name,
    h.lat,
    h.lon,
    h.wind_kt,
    h.pressure_hpa,
    h.sshs_category

FROM stg_airline_delay d
LEFT JOIN stg_weather w
    ON  d.airport      = w.airport
    AND d.flight_month = w.flight_month
LEFT JOIN stg_hurricane h        -- <== monthly hurricane table
    ON  d.flight_month = h.flight_month;

SELECT *
FROM fact_monthly_delay_weather_hurricane

SELECT *
FROM stg_hurricane

SELECT *
FROM stg_weather

SELECT *
FROM stg_airline_delay