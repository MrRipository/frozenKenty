--try
CREATE DATABASE ff_db;
CREATE SCHEMA ff_schema;

USE DATABASE ff_db;
USE SCHEMA ff_schema;
USE warehouse compute_wh;

CREATE STAGE ff_week1
URL = 's3://frostyfridaychallenges/challenge_1/';

CREATE OR REPLACE TABLE TBL (Col1 varchar);

COPY INTO tbl from @ff_week1;


--Afetr learning from other users post
grant usage on warehouse COMPUTE_WH to role SYSADMIN;
use warehouse compute_wh;

create database ff_2_db;
create schema ff_2_schema;

create stage ff_week1
URL = 's3://frostyfridaychallenges/challenge_1/';

list @ff_week1;

select 
  $1,
  metadata$filename as filename,
  metadata$file_row_number as row_num
from @ff_week1;

create or replace table ff as 
select $1, metadata$filename as filename, metadata$file_row_number as row_num
from @ff_week1
order by filename, row_num;

select * from ff;

