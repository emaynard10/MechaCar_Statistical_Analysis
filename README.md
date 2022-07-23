# MechaCar_Statistical_Analysis
Tools: R , RStudio, and statistics

## Linear Regression to Predict MPG

![Screen Shot 2022-07-23 at 8 29 04 AM](https://user-images.githubusercontent.com/99676466/180615064-87bacc6f-3fce-49c1-9bb8-35d17e405f91.png)

* Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
We can look at each Pr(>|t|) value which represents the probability that each coefficient contributes a random amount of variance to the linear model. In the Pr(<|t|) column the coefficients that have significance are ground clearance and vehicle length and intercept as seen with the asterisks. These are statistically unlikely to provide random amounts of variance to the linear model. Or they have a significant impact on mpg. When an intercept is statistically significant, there could be factors not included in the dataset that are significant to mpg. 
 
* Is the slope of the linear model considered to be zero? Why or why not?
The slope of the linear model is not zero as shown by the p-value; the p-value of 5.35e-11 is of a level of extreme significance so the null hypothesis can be rejected. The variables are likely not distributed based on random chance. 

* Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
The r-squared value of the model is used to determine if the model sufficiently predicts our dependent variable or mpg. The r-squared value is .7149 or 71%. So yes and no. the linear model does predict mpg fairly effectively, though there are likely other factors to be considered. 

## Summary Statistics on Suspension Coils!
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

![total_summary](https://user-images.githubusercontent.com/99676466/180615100-77112237-ac14-4d10-93cd-4990640c9c5c.png)

The variance for the total lot summary is 62.3 which falls under the 100 PSI requirements. The statistics are more interesting when broken down between the three manufacturing lots, where the first two lots are very far below the variance. It Lot 3 that skews the variance to be as high as it is in the total summary. Lot three variance is 170 which is far over the acceptable metric of 100. So each lot individually does not meet the manufacturing requirement design specification. 
 
![lot_summary](https://user-images.githubusercontent.com/99676466/180615110-5fd6a0bf-7f4f-4016-ab66-9189fb956bf2.png)



## T-Tests on Suspension Coils

The t.tests show very similar means between the lots compared with a population mean of 1500 PSI. All lots together show a p-value of .06028 which is slightly higher than the 5% significance value. Looking at the individual lots, Lot 1 the p-value is 1, so much higher than the 5% siginificance value, with lot 2 at .6072 still too high to reject the null hypothesis, and lot 3 p-value is .04168 or the only lot with a p-value below the siginificance level, so we can reject the null hypothesis. All tests show statistically similar means except Lot 3, where the means are statistically different. 

![t test_alllots](https://user-images.githubusercontent.com/99676466/180615082-bd8cd70b-94f6-49e0-bea7-63c43a5eafd5.png)

![t testLot1](https://user-images.githubusercontent.com/99676466/180615084-d16b47a1-0e6f-4ae4-809b-4e674e264188.png)

![t testLot2](https://user-images.githubusercontent.com/99676466/180615086-31a6c49f-b308-4b17-b2b8-d79502786810.png)

![t testLot3](https://user-images.githubusercontent.com/99676466/180615089-662fbab1-012a-4664-b070-87ab7ebe4002.png)

## Study Design: MechaCar vs Competition

#### * What metric or metrics are you going to test?
In order to compare MechaCar to one or more competitors, we will compare cost, fuel efficiency, and safety ratings

#### * What is the null hypothesis or alternative hypothesis?
H0 : The means of all groups are equal, or µ1 = µ2 = … = µn.
Ha : At least one of the means is different from all other competitors.

#### * What statistical test would you use to test the hypothesis? And why?
The statistical test we will use is the analysis of variance or the ANOVA. This test helps answer the analytical question of is there a statistical difference between the distribution means from multiple samples? This test was chosen because it will look at categorical data,  being different competitors, and multiple variables to determine the differences in means across various competitors. While a t test is also capable of comparing means, this analysis is designed to compared across multiple competitors. In R we can use the aov() function which takes data and formula vaiables to calculate our statistics. If needed we can filter the columns in the dataset that match our metrics and comparing our metrics across the categories, and then take a summary() of the aov().

#### * What data is needed to run the statistical test?
The data needed for the test is the costs, mpg, and safety ratings from a selection of competitors.
