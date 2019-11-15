-- PURPOSE: Grant scripts to necessary database objects in RPS

-- USAGE: Replace <replace_with_password> with the desired password and 
--        run script via Sybase Interactive SQL while connected to RPS database


CREATE USER OutpostUser 
IDENTIFIED BY <replace_with_password>


-- App needs to auth RPS/Outpost user against in-database info.
GRANT SELECT
ON DBA.USER_PROFILE
TO OutpostUser;

-- App needs to log users in/out to ensure writes to Audit table.
GRANT EXECUTE
ON DBA.DBA.LOG_USER
TO OutpostUser;

-- App needs to CRUD this data
GRANT SELECT, INSERT, UPDATE, DELETE
ON DBA.IMAGE
TO OutpostUser;

-- App needs to CRUD this data
GRANT SELECT, INSERT, UPDATE, DELETE
ON DBA.PARCEL
TO OutpostUser;

-- App needs to CRUD this data
GRANT SELECT, INSERT, UPDATE, DELETE
ON DBA.SITE
TO OutpostUser;


-- App needs to CRUD this data
GRANT SELECT, INSERT, UPDATE, DELETE
ON DBA.PARCEL_TO_OWNER
TO OutpostUser;


-- App needs to CRUD this data
GRANT SELECT, INSERT, UPDATE, DELETE
ON DBA.RPS_NOTES
TO OutpostUser;


-- App needs to CRUD this data
GRANT SELECT, INSERT, UPDATE, DELETE
ON DBA.RES_BLDG
TO OutpostUser;


-- App needs to CRUD this data
GRANT SELECT, INSERT, UPDATE, DELETE
ON DBA.LAND
TO OutpostUser;


-- App needs to CRUD this data
GRANT SELECT, INSERT, UPDATE, DELETE
ON DBA.IMPROVEMENT
TO OutpostUser;


GRANT SELECT
ON DBA.OWNER
TO OutpostUser;


GRANT SELECT, UPDATE, INSERT
ON DBA.ASSESSMENT
TO OutpostUser;


GRANT SELECT
ON DBA.BLDGSTYLE_STR
TO OutpostUser;

GRANT SELECT
ON DBA.SOILRATE_STR
TO OutpostUser;


GRANT SELECT
ON DBA.WTRFNTYP_STR
TO OutpostUser;


GRANT SELECT
ON DBA.USEDASCODE_STR
TO OutpostUser;


GRANT SELECT
ON DBA.UNITCODE_STR
TO OutpostUser;


GRANT SELECT
ON DBA.RENT_TYPE_STR
TO OutpostUser;


GRANT SELECT
ON DBA.CBSMTTYP_STR
TO OutpostUser;


GRANT SELECT
ON DBA.RBSMTTYP_STR
TO OutpostUser;


GRANT SELECT
ON DBA.BOECKMOD_STR
TO OutpostUser;


GRANT SELECT
ON DBA.CONDITION_STR
TO OutpostUser;


GRANT SELECT
ON DBA.GRADE_STR
TO OutpostUser;


GRANT SELECT
ON DBA.CONSTRQUAL_STR
TO OutpostUser;


GRANT SELECT
ON DBA.EXT_WALL_STR
TO OutpostUser;


GRANT SELECT
ON DBA.FUELTYPE_STR
TO OutpostUser;


GRANT SELECT
ON DBA.HEATTYPE_STR
TO OutpostUser;


GRANT SELECT
ON DBA.LANDINFL_STR
TO OutpostUser;


GRANT SELECT
ON DBA.LANDTYPE_STR
TO OutpostUser;


GRANT SELECT
ON DBA.MEASCD_STR
TO OutpostUser;


GRANT SELECT
ON DBA.STRUCTURE_STR
TO OutpostUser;


GRANT SELECT
ON DBA.NBHDCODE_STR
TO OutpostUser;