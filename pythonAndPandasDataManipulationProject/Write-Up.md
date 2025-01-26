# Correlation Between Impact Players and Team Revenue in the NBA
## Michael Rudin

### Abstract:
There has been an increasing use and relevance of statistics and data analysis by sports teams, leagues, casinos, and even recreational sports gamblers (particularly in fantasy leagues). Companies aimed at fantasy sports are now differentiating themselves by offering league datasets and data analysis tools. While much of the analytical focus is aimed at players and win percentage, I am looking to explore the relationship between teams with one or more high-value players and team revenue by comparing the differences between team revenue for teams with and without an impact player. A high-value/special/impact player is defined as a player who earns in the top 5% of salaries for that year. Data was collected from two reputable sources and was reorganized to create a dataset with the appropriate fields for this study: the year (2011-2021), teams (all 30 teams), the count of impact players on that team in that year, boolean value determining if team had one or more impact players that year. The data was then collected and analyzed using bivariate and univariate summary statistics calculated in RStudio. Using a two-sample t-test with equal standard deviations, I found the p-value to be less than the significance level. Therefore, I reject the null hypothesis and conclude that there is sufficient evidence to suggest that the means of teams’ revenues increase based on whether they have one or more impact player(s).

### Background:
While statistics have always been used to judge and rank players, it wasn’t until the early 2000’s with the success of the small-market, low-budget Oakland Athletic’s in the MLB that in-depth statistics and data analysis saw its rapid growth in use for sports. Win percentage and winning championships tend to be the focus of many teams, but for management, the real question is what increases revenue and profit. If a team is the worst in the league, but has the highest revenue and profits, does its win percentage matter?

When looking at profit, salaries are the biggest cost for a team, accounting for 52-58% of a teams’ annual expenses (FILL IN, 1). This begs the question, do expensive, supposedly impact players increase teams’ revenue, or are they just a drain on financial resources. Specifically, I am looking to answer the question: does having one or more impact players on a team increase revenue? The null hypothesis is that the difference in revenue means is equal to 0; the alternative hypothesis is that the difference in revenue means is greater for those teams with one or more impact players.

### Methods:

**Data Collection and Manipulation:**

Data was put together in 3 separate files and compiled from 2 different sources: ESPN (for player statistics) and runrepeat.com (for team revenue). The latter was simply a compilation of data from Forbes. For each year from 2011-2021, the ESPN data was on a different page, so I had to copy and paste the data from each page into an excel file (Excel Data/Unclean Initial Data). Unlike the ESPN data, runrepeat data was in a usable format. I simply copied and pasted into an excel file (Excel Data/Team Revenue By Year). I converted the two excel files into csv files so I could merge and manipulate the tables in python. I also added my own csv file with the number of players in the NBA per year (found as the bottom entry on the same ESPN website for player statistics). With these tables and some coding, I converted the data to a format that could be used to answer this question. There are 5 columns (or fields): Team, Year, Revenue, Count of High Value Players, Binary Value For Data Frame. This dataset essentially says: for each year, for each team, what is the team’s revenue, the number of impact players, and did this team have at least one impact player.

**Data Quality:**

The data on the salaries of the players is unbiased. However, the team revenue is not. All NBA teams are private, so there is no public disclosure of their financials. However, every year, Forbes estimates teams’ revenue based on NBA league revenue (which is distributed equally amongst the teams), ticket costs, stadium capacity percentage during home games, merchandise, and other unspecified factors. Forbes is a reputable site with history of estimating money and wealth (most notably, Forbes 500). Although imperfect, the data gives a strong indication of what the actual revenue might be.

To analyze the collected data, I will use univariate and bivariate summary statistics. A pie chart is used to visualize the distribution of teams with and without high-value player. For comparing the revenues of teams with and without impact players and their associated revenues, I will use a side-by-side boxplot. A histogram is used to display the relative frequency of revenues, grouped into 5 categories. A two-sample t-test with equal variance matched pair sampling is used to compare the mean revenues of teams with and without impact players.

**Results:**

I have a total sample size of 330 teams, 146 (44%) without an impact player, 184 (56%) with one or more. The average team revenue is 201.45 with a standard deviation of 74.39. The median is 194, a low of 78 and a high of 474. The middle 50% are between 142 and 244. The higher mean compared to the median numerically exemplifies the slight right skew seen in the histogram in figure 2. The histogram is otherwise somewhat symmetrical and unimodal (although that is somewhat debatable).

After separating the sample groups into two groups (teams with 0 impact players and teams with 1 or more impact players), the mean for teams with 0 impact players is 183.53 with a standard deviation of 70.98. The mean for teams with 1 or more impact players is 215.66 and the standard deviation is 74.15. Looking at the side-by-side box plot in figure 3, we can see that the distributions are relatively similar, with teams with 1 or more impact players having a larger spread, but fewer outliers when compared to teams with 0 impact players.

Given how the standard deviations are only 5 apart (7% difference), we can use a 2-sample t-test with equal variances to determine if having one ore more impact players does or does not increase revenue. The test statistic is -4.004. In RStudio, the p-value is less than the significance level. Ha simply states that the two are not equal. From this, we can reject the null hypothesis, which states that there is no difference in revenue between teams with or without high-value player(s). However, we are looking to see if there is an increase in revenue. Our Ha is that teams without impact players generate less revenue than teams with one or more. This can be written as Ha: μ1 (without impact players) < μ2 (with impact players). We can calculate the p-value for the new Ha by plugging it into a pnorm function with 316.7 degrees of freedom. The resulting p-value is 3.88\*10\-5. Once again, we reject the null hypothesis. There is sufficient evidence to suggest that one or more impact players on a team increase revenue for that team. All calculations were completed in RStudio. The code can be found in text form under Appendix as well as under the R Code file.

**Conclusion:**

The objective of the study was to determine if there was a correlation between an NBA team’s revenue and the inclusion of one or more impact players on the team that year. The null hypothesis stated that there wasn’t a difference in revenues between the two groups and the alternative hypothesis stated that a team’s revenue increases if it has one or more impact players. Given that similarity in standard deviations between the two groups, we used a two sample t-test. The test statistic is -4.004 and the p-value is 3.88\*10\-5. The p\-value is smaller than the significance, so we reject the null hypothesis and conclude that there is sufficient evidence to suggest that one or more impact players on an NBA team increase that team’s revenue that year. There are limitations to our study. The definition of a high-value player is subjective. Choosing the top 5% of highest paid players every year was just one method of determining that measure. In addition, team revenue data is not certain, it is only an estimate. Also, I only focused on revenue. I did not state that the increase in revenue would offset the costs of the expensive players. Expensive players might decrease profit, but that is a piece of data I could not find. With more concrete data, a future study might be able to better analyze this data and come to a more accurate conclusion.

### Sources:

1.	https://www.si.com/nba/2018/09/21/nba-teams-revenue-spending-breakdown-small-large-market
2.	2020-2021	http://www.espn.com/nba/salaries/\_/year/2021/seasontype/3
3.	2019-2020	http://www.espn.com/nba/salaries/\_/year/2020/seasontype/3		
4.	2018-2019	http://www.espn.com/nba/salaries/\_/year/2019/seasontype/3		
5.	2017-2018	http://www.espn.com/nba/salaries/\_/year/2018/seasontype/3		
6.	2016-2017	http://www.espn.com/nba/salaries/\_/year/2017/seasontype/3		
7.	2015-16	http://www.espn.com/nba/salaries/\_/year/2016/seasontype/3		
8.	2014-15	http://www.espn.com/nba/salaries/\_/year/2015/seasontype/3		
9.	2013-14	http://www.espn.com/nba/salaries/\_/year/2014/seasontype/3		
10.	2012-13	http://www.espn.com/nba/salaries/\_/year/2013/seasontype/3		
11.	2011-12	http://www.espn.com/nba/salaries/\_/year/2012/seasontype/3		
12.	2010-11	http://www.espn.com/nba/salaries/\_/year/2011/seasontype/3		
13.	2009-10	http://www.espn.com/nba/salaries/\_/year/2010/seasontype/3	
14.	https://runrepeat.com/nba-revenue-statistics

