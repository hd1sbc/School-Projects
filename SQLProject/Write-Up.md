# Project Write Up
## Michael Rudin

**This write up has been edited from its original form to match .md format. Contents have also been altered for security reasons, to prevent cheating/copying, and to make it easier to understand**

### Overview

I chose to investigate stats related to NBA teams and players. My goal was to visualize relationships from different fields and to comment on any visually noticeable trends (I did not do any statistical analysis, purely visual). I chose this topic because of easily available and relatively clean data and fields, as well as my own interests in sports.

When selecting the data to use, I chose different datasets with seemingly unrelated fields to see if there is any visual trend. The only thing in common between the fields and datasets is that they are related to some part of the NBA. For example, two fields from my datasets are average points a player scored per game in a year and NBA team revenue by year. These two columns are not intuitively related, but I am looking to see if such a relationship exists. I also chose to include a wide variety of fields in my data so that I had greater optionality in my choice of columns for my visualizations. I used data from the 2010/2011 season until the 2020/2021 season. I chose these years because one of the key datasets (Team Revenue) only contained data for that time period.

### Datasets And CSV Conversion

I downloaded my data from many unique sources (details/work cited at bottom of document). Unable to download data, Icopied and pasted the data from the web into Excel documents. For salary data and points (pts) tables, each year’s data was inputted into a different excel document. I then converted excel documents to CSV for use in MySQL with a python script. The “Abbreviations And Names” document was manually converted to CSV format.  The original Excel documents as well as the csv files are included.

For consistency, all year columns refer to the year the NBA season started. For those who are not aware, the NBA season lasts across two calendar years. For example, if the year column value is 2010, it refers to the 2010/2011 season.

### Raw Data Loading And Populating

First, I set “secure\_file\_priv” value to “” (not NULL) to enable loading files from any location into the database. Then, I created a MySQL database to hold the initial raw data with one table created for each excel document, with matching fields.

For Pts Tables, there were more columns than I wanted, so when loading the data from the CSV, I set the unwanted columns to “@dummy” so they wouldn’t be added. I didn’t want to include the column headers, so for each table, I dropped the first column with “IGNORE 1 ROWS”. Also, on some of the tables, there were players tied for a rank, causing an error when loading into the table because rank was a primary key. I manually changed these values in the CSVs since there were only 3 instances across the 11 seasons.

For Salary Tables, there were multiple column headers throughout the data list (not just the first row). Since these were different datatypes (VARCHAR/TEXT) than some of the columns, this created a problem. I solved this with IGNORE statement, which would include the entire row, and add the values if the datatype matched. In the data cleaning stage, I would remove these rows entirely.


For Team Rev Tables, the data was in the format of years as the columns and teams as the rows. I set the column headers to be 4 digits; two digits for each of the last two digits of the two calendar years of the NBA season (so 1011 represents 2010/2011 season). I didn’t want to include the column headers, so for each table, I dropped the first column with “IGNORE 1 ROWS”.

The Team Abbreviation Tables contains the team’s name and corresponding team abbreviation. This table is for use in converting the Team field in the Points (Pts) table from an abbreviation to team name to match the set of Team values in the other tables, enabling joins.

### Data Cleaning

I created a MySQL database to hold combined and cleaned data. For both salary and points (called pts from now on) tables, the corresponding tables, which were separated by year, were combined into one.

The Pts table contained the top 40 players and associated scoring-related values. I combined the tables from each year into one as mentioned above. However, that table is temporary. I then created a view, joining the temporary table with the team abbreviation table. Next, I created the final Pts table, in which I insert all the values from the view into the table. Finally, I cleaned up. In the Pts table, I dropped the Team column (which holds the team abbreviation) and renamed the AbbrTeam column to “Team” since it holds the elongated team name. Lastly, I drop the view and the temporary table.

For the Salary Table, I combined the tables from each year into one as mentioned above. I then deleted the rows that contain column headers (mentioned in the data loading section for Salary table). Next, I updated the Name (player name) column by removing the position included in the string. The format for the column was: playerFirstName playerLastName, position. I removed the position from the string by removing all characters following (and including) the comma. Finally, I changed the Team name of “LA Clippers” to “Los Angeles Clippers” to match the value in other tables, enabling joins.

For Team Revenue, I transformed this table from a wide table to a long one because it is easier to run statistical analysis (according to lecture). The table was wide because the columns represented a year. To transform this table into a long one, I selected the revenue for each team for a single year, and manually set the value of the year column for that select statement. I did this for each year, combining each select statement with a UNION ALL to get a table that shows the revenue per team (primary key 1) for every year (primary key 2). Also, the revenue values were initially a string and included a dollar sign ($). To fix this, in the UNION SELECT statements mentioned earlier, I added a substring function to the revenue column. Finally, there was an additional row at the end that showed the average revenue per year. I removed that row.

The remainder of this write up contains Tableau visualizations and explanations. They were omitted to match the .md format and to prevent cheating/copying.

## Sources:

1.	http://www.espn.com/nba/salaries/\_/year/2021/seasontype/3 
2.	http://www.espn.com/nba/salaries/\_/year/2020/seasontype/3	 
3.	http://www.espn.com/nba/salaries/\_/year/2019/seasontype/3		
4.	http://www.espn.com/nba/salaries/\_/year/2018/seasontype/3		
5.	http://www.espn.com/nba/salaries/\_/year/2017/seasontype/3		
6.	http://www.espn.com/nba/salaries/\_/year/2016/seasontype/3		
7.	http://www.espn.com/nba/salaries/\_/year/2015/seasontype/3		
8.	http://www.espn.com/nba/salaries/\_/year/2014/seasontype/3
9.	https://www.espn.com/nba/salaries/\_/year/2013
10.	https://www.espn.com/nba/salaries/\_/year/2012
11.	https://www.espn.com/nba/salaries/\_/year/2011
12.	https://runrepeat.com/nba-revenue-statistics 
13.	https://www.nba.com/stats/players/traditional?Season=2010-11
14.	https://www.nba.com/stats/players/traditional?Season=2011-12
15.	https://www.nba.com/stats/players/traditional?Season=2012-13
16.	https://www.nba.com/stats/players/traditional?Season=2013-14
17.	https://www.nba.com/stats/players/traditional?Season=2014-15
18.	https://www.nba.com/stats/players/traditional?Season=2015-16
19.	https://www.nba.com/stats/players/traditional?Season=2016-17
20.	https://www.nba.com/stats/players/traditional?Season=2017-18
21.	https://www.nba.com/stats/players/traditional?Season=2018-19
22.	https://www.nba.com/stats/players/traditional?Season=2019-20
23.	https://www.nba.com/stats/players/traditional?Season=2020-21
24.	https://en.wikipedia.org/wiki/Wikipedia:WikiProject\_National\_Basketball\_Association/National\_Basketball\_Association\_team\_abbreviations
