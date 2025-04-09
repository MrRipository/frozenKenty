CREATE DATABASE ff_db;
CREATE SCHEMA ff_schema;

USE DATABASE ff_db;
USE SCHEMA ff_schema;
USE warehouse compute_wh;

CREATE STAGE ff_week1
URL = 's3://frostyfridaychallenges/challenge_1/';

CREATE OR REPLACE TABLE TBL (Col1 varchar);

COPY INTO tbl from @ff_week1;
