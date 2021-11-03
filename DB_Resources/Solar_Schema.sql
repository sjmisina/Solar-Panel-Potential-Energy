
CREATE TABLE NIST2015 (
    "TIMESTAMP" date   NOT NULL,
    "InvVDCin_Avg" float   NOT NULL,
    "Array Tilt" float   NOT NULL
);
CREATE TABLE NIST2016 (
    "TIMESTAMP" date   NOT NULL,
    "InvVDCin_Avg" float   NOT NULL,
    "Array Tilt" float   NOT NULL
);
CREATE TABLE NIST2017 (
    "TIMESTAMP" date   NOT NULL,
    "InvVDCin_Avg" float   NOT NULL,
    "Array Tilt" float   NOT NULL
);
CREATE TABLE NIST2018 (
    "TIMESTAMP" date   NOT NULL,
    "InvVDCin_Avg" float   NOT NULL,
    "Array Tilt" float   NOT NULL
);

CREATE TABLE NREL2015 (
    "time_stamp" date   NOT NULL,
	"Year" float NOT NULL,
	"Month" float NOT NULL,
	"Day" float NOT NULL,
	"Hour" float NOT NULL,
	"Minute" float NOT NULL,
    "GHI" float   NOT NULL,
    "DHI" float   NOT NULL,
    "DNI" float   NOT NULL,
	"Wind_Speed" float   NOT NULL,
	"Temperature" float   NOT NULL,
    "Cloud_Type" int   NOT NULL,
    "Solar_Zenith_Angle" float   NOT NULL,
    "Surface_Albedo" float   NOT NULL,
    "Wind_Direction" float   NOT NULL,
	"Pressure" float   NOT NULL,
    "Precipitable_Water" float   NOT NULL,
    "Relative_Humidity" float   NOT NULL)
	;
	
CREATE TABLE NREL2016 (
    "time_stamp" date   NOT NULL,
	"Year" float NOT NULL,
	"Month" float NOT NULL,
	"Day" float NOT NULL,
	"Hour" float NOT NULL,
	"Minute" float NOT NULL,
    "GHI" float   NOT NULL,
    "DHI" float   NOT NULL,
    "DNI" float   NOT NULL,
	"Wind_Speed" float   NOT NULL,
	"Temperature" float   NOT NULL,
    "Cloud_Type" int   NOT NULL,
    "Solar_Zenith_Angle" float   NOT NULL,
    "Surface_Albedo" float   NOT NULL,
    "Wind_Direction" float   NOT NULL,
	"Pressure" float   NOT NULL,
    "Precipitable_Water" float   NOT NULL,
    "Relative_Humidity" float   NOT NULL

);
CREATE TABLE NREL2017 (
    "time_stamp" date   NOT NULL,
	"Year" float NOT NULL,
	"Month" float NOT NULL,
	"Day" float NOT NULL,
	"Hour" float NOT NULL,
	"Minute" float NOT NULL,
    "GHI" float   NOT NULL,
    "DHI" float   NOT NULL,
    "DNI" float   NOT NULL,
	"Wind_Speed" float   NOT NULL,
	"Temperature" float   NOT NULL,
    "Cloud_Type" int   NOT NULL,
    "Solar_Zenith_Angle" float   NOT NULL,
    "Surface_Albedo" float   NOT NULL,
    "Wind_Direction" float   NOT NULL,
	"Pressure" float   NOT NULL,
    "Precipitable_Water" float   NOT NULL,
    "Relative_Humidity" float   NOT NULL

);
CREATE TABLE NREL2018 (
    "time_stamp" date   NOT NULL,
	"Year" float NOT NULL,
	"Month" float NOT NULL,
	"Day" float NOT NULL,
	"Hour" float NOT NULL,
	"Minute" float NOT NULL,
    "GHI" float   NOT NULL,
    "DHI" float   NOT NULL,
    "DNI" float   NOT NULL,
	"Wind_Speed" float   NOT NULL,
	"Temperature" float   NOT NULL,
    "Cloud_Type" int   NOT NULL,
    "Solar_Zenith_Angle" float   NOT NULL,
    "Surface_Albedo" float   NOT NULL,
    "Wind_Direction" float   NOT NULL,
	"Pressure" float   NOT NULL,
    "Precipitable_Water" float   NOT NULL,
    "Relative_Humidity" float   NOT NULL
    
);




old code 

CREATE TABLE "panel_table" (
    "TIMESTAMP" date   NOT NULL,
    "InvPDC_KW_Avg" float   NOT NULL,
    "SolarAzFromSouth_deg" float   NOT NULL
);

CREATE TABLE "weather_table" (
    "TIMESTAMP" date   NOT NULL,
	"Year" float NOT NULL,
	"Month" float NOT NULL,
	"Day" float NOT NULL,
	"Hour" float NOT NULL,
	"Minute" float NOT NULL,
    "GHI" float   NOT NULL,
    "DHI" float   NOT NULL,
    "DNI" float   NOT NULL,
	"Wind_Speed" float   NOT NULL,
	"Temperature" float   NOT NULL,
    "Cloud_Type" int   NOT NULL,
    "Solar_Zenith_Angle" float   NOT NULL,
    "Surface_Albedo" float   NOT NULL,
    "Wind_Direction" float   NOT NULL,
	"Pressure" float   NOT NULL,
    "Precipitable_Water" float   NOT NULL,
    "Relative_Humidity" float   NOT NULL,
    
    CONSTRAINT "pk_weather_table" PRIMARY KEY (
        "TIMESTAMP"
     )
);

ALTER TABLE "panel_table" ADD CONSTRAINT "fk_panel_table_TIMESTAMP" FOREIGN KEY("TIMESTAMP")
REFERENCES "weather_table" ("TIMESTAMP");

SELECT * FROM weather_table;

SELECT * FROM panel_table;