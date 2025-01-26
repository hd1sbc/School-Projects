USE transformed_data;

CREATE TABLE IF NOT EXISTS Team_Rev(
    Team VARCHAR(100),
    Year YEAR,
    Rev INT,
    PRIMARY KEY (Team, Year)
);

INSERT INTO Team_Rev (Team, Year, Rev)
SELECT Team, "2010" AS Year, SUBSTR(`1011`,2,LENGTH(`1011`)) AS Rev
FROM projectrawdata.team_rev tr
UNION ALL (SELECT Team, "2011" AS Year, SUBSTR(`1112`,2,LENGTH(`1112`)) AS Rev FROM projectrawdata.team_rev tr)
UNION ALL (SELECT Team, "2012" AS Year, SUBSTR(`1213`,2,LENGTH(`1213`)) AS Rev FROM projectrawdata.team_rev tr)
UNION ALL (SELECT Team, "2013" AS Year, SUBSTR(`1314`,2,LENGTH(`1314`)) AS Rev FROM projectrawdata.team_rev tr)
UNION ALL (SELECT Team, "2014" AS Year, SUBSTR(`1415`,2,LENGTH(`1415`)) AS Rev FROM projectrawdata.team_rev tr)
UNION ALL (SELECT Team, "2015" AS Year, SUBSTR(`1516`,2,LENGTH(`1516`)) AS Rev FROM projectrawdata.team_rev tr)
UNION ALL (SELECT Team, "2016" AS Year, SUBSTR(`1617`,2,LENGTH(`1617`)) AS Rev FROM projectrawdata.team_rev tr)
UNION ALL (SELECT Team, "2017" AS Year, SUBSTR(`1718`,2,LENGTH(`1718`)) AS Rev FROM projectrawdata.team_rev tr)
UNION ALL (SELECT Team, "2018" AS Year, SUBSTR(`1819`,2,LENGTH(`1819`)) AS Rev FROM projectrawdata.team_rev tr)
UNION ALL (SELECT Team, "2019" AS Year, SUBSTR(`1920`,2,LENGTH(`1920`)) AS Rev FROM projectrawdata.team_rev tr)
UNION ALL (SELECT Team, "2020" AS Year, SUBSTR(`2021`,2,LENGTH(`2021`)) AS Rev FROM projectrawdata.team_rev tr)
;

SELECT * FROM Team_Rev;

DELETE FROM Team_Rev WHERE Team = "Average";