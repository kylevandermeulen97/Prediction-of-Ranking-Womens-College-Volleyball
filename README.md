# Prediction-of-Ranking-Womens-College-Volleyball

## Introduction

The goal of this study is to determine which factors are significant in winning percentage calculation by using multiple linear regression and logit regression. By using the 334 teams during the 2017 season, this study provides the prediction of winning percentages for obtaining positive results in NCAA division I women’s volleyball. The results from the multiple linear regression show that winning percentage can be explained not only by my team’s performance (Kills = 0.06 [0.001, 0.11], Errors = -0.06 [-0.008, -0.04], Aces= 0.04 [-0.00, 0.07]), but also opponent’s performance (Opp Kills = -0.06 [-0.009, -0.04], Opp Errors = 0.12 [0.008, 0.152]. The odds of significant factors are calculated in the logistic model (Kills odds = 1.03 [1.02, 1.04], Errors odds = 0.98 [0.97, 0.99], Opp Kills Odds = 0.97 [0.97, 0.99], Opp Errors odds = 1.03 [1.02, 1.05]). Based off of these results coaches and players at the division I level should not only consider focusing on the improvement of their own performance skills, but should take into account limiting and decreasing opponent’s performance. 

## Data Description

**Sets (S)** The amount of games a team played over the course of the season Kills Attacks by a player that directly leads to a point

**Errors** An attack that directly results in a point for the opposing team Total Attacks The sum of a team’s attacks over the season

**Hitting Percentage (Pct)** Hitting % = (Kills – Errors) / Total Attacks

**Assists** When a player passes, sets, or digs the ball to a teammate who attacks the ball for a kill Digs A player passes that ball that has been attacked by the opposition

**Aces** A serve that directly results in a point

**Solo Blocks** A single player blocks the ball into the opponent’s court leading to a point

**Block Assists** Awarded when multiple players are involved in blocking the ball into the
opponent’s court leading to a point

**Total Blocks (TB)** The sum of a team’s blocks over the season

**Opponent Kills** Attacks by an opposing player that directly leads to a point

**Opponent Errors** An attack by the opposition that directly results in a point for the other team Opponent Attacks The sum of an opposing team’s attacks over the season

**Opponent Hitting Pct** Opponent Hitting % = (Kills – Errors) / Total Attacks





## Correlation (Win Pct ~ all independent variables)

![](plots/correlation_matrix.png height='15' width='15')



# Linear model results

![](plots/linear_model_results.png height='15' width='15')



In reference to the results we can see the negative significant factors as such, the amount of sets a team played over the course of the season, errors committed, and opponent kills. The more sets a team played over the course of a season the more fatigued the team as a whole and individual players, which in turn decreased a team’s overall win percentage. The total errors a team commits obviously decrease a team’s win percentage. Lastly, the number of opponent kills will result in opponent’s points which will decrease your team’s odds of winning. Something interesting to see was the opposite effect of kills and errors, which in turn will cancel each other out. Also, aces were positively significant in increasing a team’s win percentage and the most positive significant factor was the amount of errors the opposing team committed. This factor being the highest positive coefficient was unexpected.



# Logistic model results

![](plots/logit_model_results.png height='15' width='15')



From the table we can see four significant predictors of win percentage. Once again we see the amount of sets played was negatively significant. For every set played it decreases the odds of win percentage by 23%. Kills had a 3% positive effect and Errors had 2% negative effect on a team’s win percentage. Lastly, once again opponent errors were significant by increasing the log- odds likelihood of win percentage by 5%. Logistically, our model identified those key predictive factors that reaffirmed what our linear model revealed through its analysis.



# Overall Results

Corresponding to the data analysis we were able to filter out the key significant factors from our beginning variables of interest list. The most significant variable that was found through the analysis was the total count of the errors an opponent committed.

![](plots/opp_errors_WinPct.scatter.png height='15' width='15')



The plot highlights the strong positive correlation between an accumulation of opponent’s errors and the winning percentage. It can be concluded that taking into account opponent’s individual stats is key in being able to combat and limit their performance, which in turn will increase your team’s winning percentage.


## Fitted Values vs. Actual Values

![](plots/fitted_model_results.png height='15' width='15')



This table depicts the top 10 teams in terms of our predicted winning percentage. In column 1 these are the actual rankings of where the team ended up in relation to their winning percentage. Column two mentions the college team names, while column three highlights our
predicted winning percentages from number 1 to number 10. The last column shows the actual winning percentages the teams finished up with at the end of the season.

As you can see we were accurate in being able to predict the top team in Penn State. All of the other fitted values were fairly close in relation to where a team finished up in the ranking. The one outlier in this top ten that needs an explanation of why they underperformed in a huge way is UMES. We had them finishing up 7th in the top 10 teams, but they actually finished 37th. Something to note is that we can never fully be able to predict the exact winning percentage of every team, but with the variables we included in our models we were able to predict a team’s winning percentage at a fairly high rate.




# Future Work and Conclusion

One idea for future work is to use the widely known Data Volley program to analyze a smaller scope of teams and use self-data collection. We would be able to obtain more in depth results and statistics which potentially could have a better correlation to win percentage. 

Unlike our analysis which was a broader analysis of team’s volleyball statistics, future work might take into account a team’s sideout percentage, player position, and rotation. Sideout percentage is essential for a team that is attempting to get out of serve receive by scoring a point and getting the ball back to serve. 

Player position may be significant in the grand scheme of increasing a team’s winning percentage. An outside hitter may be more influential and valuable than a libero, but they are both needed for a team to win. This information could be used in recruiting processes as coaches may expend more effort towards a great outside hitter over an opposite hitter. 

Lastly, analyzing a team’s ability to produce quality stats may potentially be different for the six rotations. Most teams have that one rotation that is a struggle to get out of and these results additionally may be used to focus more time on that specific rotation.

The results of our models show that winning percentage can be explained by not only by my team’s performance (Kills, Errors, Ace) but also opponent’s performance (Opp Kills, Opp Errors). We believe that teams tend to overlook working on reducing the opposing team’s statistics and focus solely on self-improvement.

Based on our results coaches and players in NCAA Division I Women’s Volleyball should allocate more practice time to honing these significant skills. With that being done teams can be most efficient over the course of the season in getting better and maximizing their odds of winning volleyball games.
