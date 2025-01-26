USE transformed_data;

CREATE TABLE IF NOT EXISTS sal(
	Year YEAR,
    `Rank` INT,
    Name VARCHAR(100),
    Team VARCHAR(100),
    Salary INT,
    PRIMARY KEY (Year, `Rank`, Name)
);

-- 2010
INSERT INTO sal (Year, `Rank`, Name, Team, Salary)
SELECT "2010" AS Year, `Rank`, Name, Team, Salary FROM projectrawdata.sal_10_11;
-- 2011
INSERT INTO sal (Year, `Rank`, Name, Team, Salary)
SELECT "2011" AS Year, `Rank`, Name, Team, Salary FROM projectrawdata.sal_11_12;
-- 2012
INSERT INTO sal (Year, `Rank`, Name, Team, Salary)
SELECT "2012" AS Year, `Rank`, Name, Team, Salary FROM projectrawdata.sal_12_13;
-- 2013
INSERT INTO sal (Year, `Rank`, Name, Team, Salary)
SELECT "2013" AS Year, `Rank`, Name, Team, Salary FROM projectrawdata.sal_13_14;
-- 2014
INSERT INTO sal (Year, `Rank`, Name, Team, Salary)
SELECT "2014" AS Year, `Rank`, Name, Team, Salary FROM projectrawdata.sal_14_15;
-- 2015
INSERT INTO sal (Year, `Rank`, Name, Team, Salary)
SELECT "2015" AS Year, `Rank`, Name, Team, Salary FROM projectrawdata.sal_15_16;
-- 2016
INSERT INTO sal (Year, `Rank`, Name, Team, Salary)
SELECT "2016" AS Year, `Rank`, Name, Team, Salary FROM projectrawdata.sal_16_17;
-- 2017
INSERT INTO sal (Year, `Rank`, Name, Team, Salary)
SELECT "2017" AS Year, `Rank`, Name, Team, Salary FROM projectrawdata.sal_17_18;
-- 2018
INSERT INTO sal (Year, `Rank`, Name, Team, Salary)
SELECT "2018" AS Year, `Rank`, Name, Team, Salary FROM projectrawdata.sal_18_19;
-- 2019
INSERT INTO sal (Year, `Rank`, Name, Team, Salary)
SELECT "2019" AS Year, `Rank`, Name, Team, Salary FROM projectrawdata.sal_19_20;
-- 2020
INSERT INTO sal (Year, `Rank`, Name, Team, Salary)
SELECT "2020" AS Year, `Rank`, Name, Team, Salary FROM projectrawdata.sal_20_21;

SELECT * FROM sal;

DELETE FROM sal WHERE Name = "NAME";
UPDATE sal
SET Name = SUBSTR(Name, 1, INSTR(Name,",")-1 );

UPDATE sal
SET Team = "Los Angeles Clippers" WHERE Team = "LA Clippers"
;