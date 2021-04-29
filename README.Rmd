---
title: Alcholism Factors
author: Violet
output: github_document
---

## Summary

The goal of our research is to identify the academic and social factors that lead to alcoholism in teenagers and to construct a model to identify the likelihood of teenagers suffering from alcoholism. To start working towards our goal, we tried to create a linear regression model with the variables we thought strongly contributed to alcohol consumption based on various visualizations. From these visualizations, a few things stood out. Those who have high weekend alcohol consumption (greater than 3), tend to have a total alcohol consumption over three. Alcoholism seems to depend more on weekend alcohol consumption than daily alcohol consumption. Men have a higher average total alcohol consumption than women. As age increases, total alcohol consumption seems to increase. However, this is likely due to a few outlying points with high age and high total alcohol consumption. High schoolers who choose their school based on reputation have the lowest total alcohol consumption while those who choose for reasons besides courses, closeness to home, and reputation, have the highest. High schoolers with parents who live together have a higher average total alcohol consumption value than those whose parents live apart. 

However, the residual plot of the linear regression model was problematic and showed a distinct downward trend. The residual plot of linear regression with all variables as predictors showed the same relationship. Thus, we concluded that a linear model would not be a good predictor. 

Therefore, we decided to use logistic regression, and define a student to be an "alcoholic" if their total alcohol consumption was greater than 3. We created two logistic regression models. The first with variables we thought significantly contributed to alcohol intake, and the second with variables we did not think contributed. As expected, the first model performed better, but only slightly so. Both models had horrible AUC, log_loss, and ROC graph values. The high log_loss values are particularly concerning, as it indicates that when our model predicts incorrectly it does so by a significant amount. Despite this, both models had high accuracy values, and both usually predicted non-alcoholics correctly. However, the second model predicted everyone to be non-alcoholic. 

This implies that the variables we initially chose such as sex and father's job do have a higher impact on a student's likely hood of being an alcoholic. However, the models also imply that some other factors(s) contribute to alcohol consumption that is/are not contained in the model.  

Additionally, there are some limitations to our model. Our logistic model would have been more accurate if there were more individuals who were defined to be alcoholics. Perhaps if the sample size included more students with high alcohol content then the model would have performed better. The demographic for the model is also very specific. It only contains students in secondary school taking a Portuguese language course in Portugal. Because of this limited demographic, it is possible that there is some slight non-independence among the observations due to factors such as peer pressure. Finally, the data was independently sourced and relied on self-reported arbitrary values. 


## Presentation

Our presentation can be found [here](presentation/presentation.html).

## Data 

P. Cortez & A. Silva, 2008, Using Data Mining to Predict Secondary School Student Performance, electronic dataset, In A. Brito and J. Teixeira Eds.,viewed 28 April 2021, <viewed 12 June 2018, <http://www.flukerpost.com>>.

## References

P. Cortez and A. Silva. Using Data Mining to Predict Secondary School Student Performance. In A. Brito and J. Teixeira Eds., Proceedings of 5th FUture BUsiness TEChnology Conference (FUBUTEC 2008) pp. 5-12, Porto, Portugal, April, 2008, EUROSIS, ISBN 978-9077381-39-7.

