-- create a new database named SolarDB in your local PostgreSQL 11 server
-- leave empty with all default settings


CREATE TABLE IF NOT EXISTS NIST_Data (
	"TIMESTAMP" timestamp without time zone,
	"gInvVDCin_Avg" float NOT NULL,	
	"gArray_Tilt" int NOT NULL,	
	"rInvVDCin_Avg" float NOT NULL,	
	"rArray_Tilt"	int NOT NULL,	
	"cInvVDCin_Avg" float NOT NULL,	
	"cArray_Tilt" int NOT NULL
);
-- populate with NIST_Data.csv by way of PostgreSQL import tool


CREATE TABLE IF NOT EXISTS "NREL_Data"
(
    "TIMESTAMP" timestamp without time zone,
    "Year" int NOT NULL,
    "Month" int NOT NULL,
    "Day" int NOT NULL,
    "Hour" int NOT NULL,
    "Minute" int NOT NULL,
    "GHI" float NOT NULL,
    "DHI" float NOT NULL,
    "DNI" float NOT NULL,
    "Wind Speed" float NOT NULL,
    "Temperature" float NOT NULL,
    "Cloud Type" float NOT NULL,
    "Solar Zenith Angle" float NOT NULL,
    "Surface Albedo" float NOT NULL,
    "Wind Direction" float NOT NULL,
    "Pressure" float NOT NULL,
    "Relative Humidity" float NOT NULL,
    "Precipitable Water" float NOT NULL
)
-- populate with NREL_Data.csv by way of PostgreSQL import tool


CREATE TABLE IF NOT EXISTS "NIST_Single"
(
    "TIMESTAMP" timestamp without time zone NOT NULL,
    "InvVDCin_Avg" double precision NOT NULL,
    "Array_Tilt" integer NOT NULL
)
-- populate with NIST_Single.csv by way of PostgreSQL import tool



-- Create new tables solar_data and solar_data_v2. 
-- These are tables of combined data for preprocessing.

-- "solar_data" has VDC and Tilt inner joined on the 
-- NIST TIMESTAMP eliminating rows where ground, roof, 
-- or canopy data is/are missing. All data for the 
-- date/time inner joined on the NREL TIMESTAMP.

-- "solar_data_v2" contains one column of VDC and Array_Tilt, 
-- right joined with NREL data on the NIST TIMESTAMP

-- The following scripts will create and populate these tables.

CREATE TABLE solar_data AS (
SELECT 
	nrel.*, 
	nist."gInvVDCin_Avg", 
	nist."gArray_Tilt", 
	nist."rInvVDCin_Avg", 
	nist."rArray_Tilt", 
	nist."cInvVDCin_Avg", 
	nist."cArray_Tilt" 
FROM "NREL_Data" nrel
INNER JOIN nist_data nist
ON nist."TIMESTAMP" = nrel."TIMESTAMP"
);

CREATE TABLE "solar_data_v2" AS (
SELECT
	nrel.*, 
	nist."InvVDCin_Avg", 
	nist."Array_Tilt"
FROM "NREL_Data" nrel
RIGHT JOIN "NIST_Single" nist
ON nrel."TIMESTAMP" = nist."TIMESTAMP"
);
	

-- SolarDB is complete
