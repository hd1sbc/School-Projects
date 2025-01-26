USE ProjectRawData;

-- 1
CREATE TABLE IF NOT EXISTS Pts_20_21 (
	`Rank` INT PRIMARY KEY, Name VARCHAR(100), Team VARCHAR(100), AGE INT, GP INT, Pts INT, FGM INT, FGA INT, TPM INT, TPA INT
);
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Top 40 Point Scorers CSV\\1. 2020-2021 Top 40 Scorers.csv'
INTO TABLE Pts_20_21
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(`Rank`,Name,Team,Age,GP,@dummy,@dummy,@dummy,Pts,FGM,FGA,@dummy,TPM,TPA,@dummy,@dummy,@dummy,@dummy,@dummy,@dummy,@dummy,@dummy,@dummy,
	@dummy,@dummy,@dummy,@dummy,@dummy,@dummy,@dummy)
;

-- 2
CREATE TABLE IF NOT EXISTS Pts_19_20 (
	`Rank` INT PRIMARY KEY, Name VARCHAR(100), Team VARCHAR(100), AGE INT, GP INT, Pts INT, FGM INT, FGA INT, TPM INT, TPA INT
);
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Top 40 Point Scorers CSV\\2. 2019-2020 Top 40 Scorers.csv'
INTO TABLE Pts_19_20
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(`Rank`,Name,Team,Age,GP,@dummy,@dummy,@dummy,Pts,FGM,FGA,@dummy,TPM,TPA,@dummy,@dummy,@dummy,@dummy,@dummy,@dummy,@dummy,@dummy,@dummy,
	@dummy,@dummy,@dummy,@dummy,@dummy,@dummy,@dummy)
;

-- 3
CREATE TABLE IF NOT EXISTS Pts_18_19 (
	`Rank` INT PRIMARY KEY, Name VARCHAR(100), Team VARCHAR(100), AGE INT, GP INT, Pts INT, FGM INT, FGA INT, TPM INT, TPA INT
);
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Top 40 Point Scorers CSV\\3. 2018-2019 Top 40 Scorers.csv'
INTO TABLE Pts_18_19
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(`Rank`,Name,Team,Age,GP,@dummy,@dummy,@dummy,Pts,FGM,FGA,@dummy,TPM,TPA,@dummy,@dummy,@dummy,@dummy,@dummy,@dummy,@dummy,@dummy,@dummy,
	@dummy,@dummy,@dummy,@dummy,@dummy,@dummy,@dummy)
;

-- 4
CREATE TABLE IF NOT EXISTS Pts_17_18 (
	`Rank` INT PRIMARY KEY, Name VARCHAR(100), Team VARCHAR(100), AGE INT, GP INT, Pts INT, FGM INT, FGA INT, TPM INT, TPA INT
);
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Top 40 Point Scorers CSV\\4. 2017-2018 Top 40 Scorers.csv'
INTO TABLE Pts_17_18
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(`Rank`,Name,Team,Age,GP,@dummy,@dummy,@dummy,Pts,FGM,FGA,@dummy,TPM,TPA,@dummy,@dummy,@dummy,@dummy,@dummy,@dummy,@dummy,@dummy,@dummy,
	@dummy,@dummy,@dummy,@dummy,@dummy,@dummy,@dummy)
;

-- 5
CREATE TABLE IF NOT EXISTS Pts_16_17 (
	`Rank` INT PRIMARY KEY, Name VARCHAR(100), Team VARCHAR(100), AGE INT, GP INT, Pts INT, FGM INT, FGA INT, TPM INT, TPA INT
);
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Top 40 Point Scorers CSV\\5. 2016-2017 Top 40 Scorers.csv'
INTO TABLE Pts_16_17
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(`Rank`,Name,Team,Age,GP,@dummy,@dummy,@dummy,Pts,FGM,FGA,@dummy,TPM,TPA,@dummy,@dummy,@dummy,@dummy,@dummy,@dummy,@dummy,@dummy,@dummy,
	@dummy,@dummy,@dummy,@dummy,@dummy,@dummy,@dummy)
;

-- 6
CREATE TABLE IF NOT EXISTS Pts_15_16 (
	`Rank` INT PRIMARY KEY, Name VARCHAR(100), Team VARCHAR(100), AGE INT, GP INT, Pts INT, FGM INT, FGA INT, TPM INT, TPA INT
);
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Top 40 Point Scorers CSV\\6. 2015-2016 Top 40 Scorers.csv'
INTO TABLE Pts_15_16
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(`Rank`,Name,Team,Age,GP,@dummy,@dummy,@dummy,Pts,FGM,FGA,@dummy,TPM,TPA,@dummy,@dummy,@dummy,@dummy,@dummy,@dummy,@dummy,@dummy,@dummy,
	@dummy,@dummy,@dummy,@dummy,@dummy,@dummy,@dummy)
;

-- 7
CREATE TABLE IF NOT EXISTS Pts_14_15 (
	`Rank` INT PRIMARY KEY, Name VARCHAR(100), Team VARCHAR(100), AGE INT, GP INT, Pts INT, FGM INT, FGA INT, TPM INT, TPA INT
);
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Top 40 Point Scorers CSV\\7. 2014-2015 Top 40 Scorers.csv'
INTO TABLE Pts_14_15
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(`Rank`,Name,Team,Age,GP,@dummy,@dummy,@dummy,Pts,FGM,FGA,@dummy,TPM,TPA,@dummy,@dummy,@dummy,@dummy,@dummy,@dummy,@dummy,@dummy,@dummy,
	@dummy,@dummy,@dummy,@dummy,@dummy,@dummy,@dummy)
;

-- 8
CREATE TABLE IF NOT EXISTS Pts_13_14 (
	`Rank` INT PRIMARY KEY, Name VARCHAR(100), Team VARCHAR(100), AGE INT, GP INT, Pts INT, FGM INT, FGA INT, TPM INT, TPA INT
);
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Top 40 Point Scorers CSV\\8. 2013-2014 Top 40 Scorers.csv'
INTO TABLE Pts_13_14
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(`Rank`,Name,Team,Age,GP,@dummy,@dummy,@dummy,Pts,FGM,FGA,@dummy,TPM,TPA,@dummy,@dummy,@dummy,@dummy,@dummy,@dummy,@dummy,@dummy,@dummy,
	@dummy,@dummy,@dummy,@dummy,@dummy,@dummy,@dummy)
;

-- 9
CREATE TABLE IF NOT EXISTS Pts_12_13 (
	`Rank` INT PRIMARY KEY, Name VARCHAR(100), Team VARCHAR(100), AGE INT, GP INT, Pts INT, FGM INT, FGA INT, TPM INT, TPA INT
);
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Top 40 Point Scorers CSV\\9. 2012-2013 Top 40 Scorers.csv'
INTO TABLE Pts_12_13
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(`Rank`,Name,Team,Age,GP,@dummy,@dummy,@dummy,Pts,FGM,FGA,@dummy,TPM,TPA,@dummy,@dummy,@dummy,@dummy,@dummy,@dummy,@dummy,@dummy,@dummy,
	@dummy,@dummy,@dummy,@dummy,@dummy,@dummy,@dummy)
;

-- 10
CREATE TABLE IF NOT EXISTS Pts_11_12 (
	`Rank` INT PRIMARY KEY, Name VARCHAR(100), Team VARCHAR(100), AGE INT, GP INT, Pts INT, FGM INT, FGA INT, TPM INT, TPA INT
);
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Top 40 Point Scorers CSV\\10. 2011-2012 Top 40 Scorers.csv'
INTO TABLE Pts_11_12
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(`Rank`,Name,Team,Age,GP,@dummy,@dummy,@dummy,Pts,FGM,FGA,@dummy,TPM,TPA,@dummy,@dummy,@dummy,@dummy,@dummy,@dummy,@dummy,@dummy,@dummy,
	@dummy,@dummy,@dummy,@dummy,@dummy,@dummy,@dummy)
;

-- 11
CREATE TABLE IF NOT EXISTS Pts_10_11 (
	`Rank` INT PRIMARY KEY, Name VARCHAR(100), Team VARCHAR(100), AGE INT, GP INT, Pts INT, FGM INT, FGA INT, TPM INT, TPA INT
);
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Top 40 Point Scorers CSV\\11. 2010-2011 Top 40 Scorers.csv'
INTO TABLE Pts_10_11
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(`Rank`,Name,Team,Age,GP,@dummy,@dummy,@dummy,Pts,FGM,FGA,@dummy,TPM,TPA,@dummy,@dummy,@dummy,@dummy,@dummy,@dummy,@dummy,@dummy,@dummy,
	@dummy,@dummy,@dummy,@dummy,@dummy,@dummy,@dummy)
;
