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


### Correlation (Win Pct ~ all independent variables)



