-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "panel_table" (
    "TIMESTAMP" date   NOT NULL,
    "InvVDin_Avg" float   NOT NULL,
    "SolarAzFromSouth_deg" float   NOT NULL
);

CREATE TABLE "weather_table" (
    "TIMESTAMP" date   NOT NULL,
    "dhi" float   NOT NULL,
    "dni" float   NOT NULL,
    "ghi" float   NOT NULL,
    "cloud_type" int   NOT NULL,
    "solar_zenith_angle" float   NOT NULL,
    "surface_albedo" float   NOT NULL,
    "wind_speed" float   NOT NULL,
    "precipitable_water" float   NOT NULL,
    "wind_direction" float   NOT NULL,
    "realative_humidity" float   NOT NULL,
    "temperature" float   NOT NULL,
    "pressure" float   NOT NULL,
    CONSTRAINT "pk_weather_table" PRIMARY KEY (
        "TIMESTAMP"
     )
);

ALTER TABLE "panel_table" ADD CONSTRAINT "fk_panel_table_TIMESTAMP" FOREIGN KEY("TIMESTAMP")
REFERENCES "weather_table" ("TIMESTAMP");

