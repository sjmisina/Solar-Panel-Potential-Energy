CREATE TABLE IF NOT EXISTS NIST_Data (
	"TIMESTAMP" timestamp without time zone,
	"gInvVDCin_Avg" float NOT NULL,	
	"gArray_Tilt" int NOT NULL,	
	"rInvVDCin_Avg" float NOT NULL,	
	"rArray_Tilt"	int NOT NULL,	
	"cInvVDCin_Avg" float NOT NULL,	
	"cArray_Tilt" int NOT NULL
);

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
)