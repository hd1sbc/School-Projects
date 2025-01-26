CREATE SCHEMA IF NOT EXISTS transformed_data;
USE transformed_data;

CREATE TABLE IF NOT EXISTS tmp_pts(
	Year YEAR,
    `Rank` INT,
    Name VARCHAR(100),
    Team VARCHAR(100), AGE INT, GP INT, Pts INT, FGM INT, FGA INT, TPM INT, TPA INT,    
    PRIMARY KEY (Year, `Rank`, Name)
);

-- 2010
INSERT INTO tmp_pts (Year, `Rank`, Name,Team,Age,GP,Pts,FGM,FGA,TPM,TPA)
SELECT "2010" AS Year, `Rank`, Name,Team,Age,GP,Pts,FGM,FGA,TPM,TPA FROM projectrawdata.pts_10_11;
-- 2011
INSERT INTO tmp_pts (Year, `Rank`, Name,Team,Age,GP,Pts,FGM,FGA,TPM,TPA)
SELECT "2011" AS Year, `Rank`, Name,Team,Age,GP,Pts,FGM,FGA,TPM,TPA FROM projectrawdata.pts_11_12;
-- 2012
INSERT INTO tmp_pts (Year, `Rank`, Name,Team,Age,GP,Pts,FGM,FGA,TPM,TPA)
SELECT "2012" AS Year, `Rank`, Name,Team,Age,GP,Pts,FGM,FGA,TPM,TPA FROM projectrawdata.pts_12_13;
-- 2013
INSERT INTO tmp_pts (Year, `Rank`, Name,Team,Age,GP,Pts,FGM,FGA,TPM,TPA)
SELECT "2013" AS Year, `Rank`, Name,Team,Age,GP,Pts,FGM,FGA,TPM,TPA FROM projectrawdata.pts_13_14;
-- 2014
INSERT INTO tmp_pts (Year, `Rank`, Name,Team,Age,GP,Pts,FGM,FGA,TPM,TPA)
SELECT "2014" AS Year, `Rank`, Name,Team,Age,GP,Pts,FGM,FGA,TPM,TPA FROM projectrawdata.pts_14_15;
-- 2015
INSERT INTO tmp_pts (Year, `Rank`, Name,Team,Age,GP,Pts,FGM,FGA,TPM,TPA)
SELECT "2015" AS Year, `Rank`, Name,Team,Age,GP,Pts,FGM,FGA,TPM,TPA FROM projectrawdata.pts_15_16;
-- 2016
INSERT INTO tmp_pts (Year, `Rank`, Name,Team,Age,GP,Pts,FGM,FGA,TPM,TPA)
SELECT "2016" AS Year, `Rank`, Name,Team,Age,GP,Pts,FGM,FGA,TPM,TPA FROM projectrawdata.pts_16_17;
-- 2017
INSERT INTO tmp_pts (Year, `Rank`, Name,Team,Age,GP,Pts,FGM,FGA,TPM,TPA)
SELECT "2017" AS Year, `Rank`, Name,Team,Age,GP,Pts,FGM,FGA,TPM,TPA FROM projectrawdata.pts_17_18;
-- 2018
INSERT INTO tmp_pts (Year, `Rank`, Name,Team,Age,GP,Pts,FGM,FGA,TPM,TPA)
SELECT "2018" AS Year, `Rank`, Name,Team,Age,GP,Pts,FGM,FGA,TPM,TPA FROM projectrawdata.pts_18_19;
-- 2019
INSERT INTO tmp_pts (Year, `Rank`, Name,Team,Age,GP,Pts,FGM,FGA,TPM,TPA)
SELECT "2019" AS Year, `Rank`, Name,Team,Age,GP,Pts,FGM,FGA,TPM,TPA FROM projectrawdata.pts_19_20;
-- 2020
INSERT INTO tmp_pts (Year, `Rank`, Name,Team,Age,GP,Pts,FGM,FGA,TPM,TPA)
SELECT "2020" AS Year, `Rank`, Name,Team,Age,GP,Pts,FGM,FGA,TPM,TPA FROM projectrawdata.pts_20_21;

-- SELECT*FROM tmp_pts;

-- Converting Team column from abbreviation to full name to match other tables ---------------------------------
CREATE OR REPLACE VIEW pts_view AS
SELECT p.*, a.Team AS AbbrTeam FROM tmp_pts p
	JOIN projectrawdata.Team_Name_Abbr a ON p.Team = a.Abr
;
SELECT * FROM pts_view;


CREATE TABLE IF NOT EXISTS pts(
	Year YEAR,
    `Rank` INT,
    Name VARCHAR(100),
    Team VARCHAR(100), AbbrTeam VARCHAR(100),
    AGE INT, GP INT, Pts INT, FGM INT, FGA INT, TPM INT, TPA INT,
    PRIMARY KEY (Year, `Rank`, Name)
);

INSERT INTO pts (YEAR, `Rank`, Name, Team, AGE, GP, Pts, FGM, FGA,TPM,TPA, AbbrTeam)
SELECT * FROM pts_view;

SELECT * FROM pts;

ALTER TABLE pts DROP Team;
ALTER TABLE pts RENAME COLUMN AbbrTeam TO Team;

DROP VIEW pts_view;
DROP TABLE tmp_pts;