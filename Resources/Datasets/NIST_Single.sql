CREATE TABLE IF NOT EXISTS "NIST_Single"
(
    "TIMESTAMP" timestamp without time zone NOT NULL,
    "InvVDCin_Avg" double precision NOT NULL,
    "Array_Tilt" integer NOT NULL
)



-- create new right-joined table
CREATE TABLE "solar_data_v2" AS (
	SELECT nrel.*, nist."InvVDCin_Avg", nist."Array_Tilt"
	from "NREL_Data" nrel
	RIGHT JOIN "NIST_Single" nist
	ON nrel."TIMESTAMP" = nist."TIMESTAMP"
	);