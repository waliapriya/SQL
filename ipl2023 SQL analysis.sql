-- IPL 2023 analysis
-- Create Database ipl
create database ipl;
use ipl;
-- Load the data using Table data import wizard
-- Select first 5 rows to read the data
select * from ipl2023 limit 5;
-- Find total number of matches
select count(distinct(match_no)) from ipl2023;
-- The output is 70
-- Find total number of cities where matches has been played
select count(distinct(city)) from ipl2023;
-- The output is 12
-- Find total number of venues where matches has been played
select count(distinct(venue)) from ipl2023;
-- The output is 13
-- Find the maximum margin of runs by which team won
select max(result_margin) from ipl2023;
-- The output is 112
-- Find the minimum result margin
select min(result_margin) from ipl2023;
-- The output is zero as the match was draw
-- Find the player name with highest man of the match winner
select man_of_the_match, count(*) as Man_of_thetotal_matches from ipl2023 group by man_of_the_match order by Man_of_thetotal_matches desc limit 1;
-- The output is Yashasvi jaiswal with 4 man of the match winner
-- Find top 3 players with highest man of the match winner
select man_of_the_match, count(*) as Man_of_thetotal_matches from ipl2023 group by man_of_the_match order by Man_of_thetotal_matches desc limit 3;
-- The output is Yashasvi jaiswal with 4 man of the match, Shubham Gill & Marcus Stoinis with 3 man of the matches each
-- Find the name of team with highest no of won matches
select winner, count(*) as winner_team from ipl2023 group by winner order by winner_team desc limit 1;
-- The output is Gujarat Titans with 10 matches
-- Find the name of top 3 team with highest no of won matches
select winner, count(*) as winner_team from ipl2023 group by winner order by winner_team desc limit 3;
-- The output is Gujarat Titans with 10 matches, Lucknow Super Giants & Chennai Super Kings with 8 matches each

