CREATE DATABASE frozen_db;
CREATE SCHEMA frozen_schema;

USE DATABASE frozen_db;
USE SCHEMA frozen_schema;

CREATE STAGE aws_s3
URL = 's3://frostyfridaychallenges/challenge_1/';
