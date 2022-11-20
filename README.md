# MechaCar_Statistical_Analysis

## Overview

AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called the team to review the production data for insights that may help the manufacturing team.

Review of the production data for insights that may help the manufacturing team. In this challenge we will ,
* Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
* Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
* Run t-tests to determine if the manufacturing lots are statistically different from the mean population
* Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers.

## Resources
Data source files: MechaCar_mpg.csv and Suspension_Coil.csv  
Software: Windows 10,RStudio, R, Tidyverse and dplyr package

## Linear Regression to Predict MPG

MechaCar prototypes were produced using multiple design specifications to identify ideal vehicle performance. Multiple metrics, such as vehicle length, vehicle weight, spoiler angle, drive train, and ground clearance, were collected for each vehicle.

Multiple linear regression was performed to understand the each of those metrics on the dependent variable vehicle performance measured in the form of 'mpg'. Summary is as shown below,

!["Linear Regression" ](Resources/Deliverable_1_LinearRegression.png?raw=true)


* Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

   As we can observe that the p-values for each of the variables is shown in "Pr(>|t|)" column. In that, some values are less than the assumed significance level of 0.05. Hence, in this dataset, the *vehicle length*, *ground_clearance* as well as *(Intercept)* provided non-random amounts of variance to the mpg values.

* Is the slope of the linear model considered to be zero? Why or why not?
  
  The slope of the linear model is not considered to be zero as the p-value: 5.35e-11 which is significantly smaller than the significant level of 0.05.

* Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

   This linear model predict mpg of MechaCar prototypes effectively as the R-squared:  0.7149, which is about 71% of all the mpg predictions.

## Summary Statistics on Suspension Coils
* The Suspension_Coil.csv file contains the dataset,results from multiple production lots. In this dataset, the weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots. Suspension Coils were manufactured in 3 different lots. On this data, basic statistics like mean, median, variance and standard deviation(SD) are calculated and also grouping seperately by each lot. 

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

The statistics summary for complete dataset is as follows,

!["Total Summary Statistics" ](Resources/Deliverable_2_total_summary.png?raw=true)



* For the overall dataset, mean is 1498.78, which is a bit less than median 1500 and the varience comes to 62.29 PSI which is below 100 PSI, which meets the design specification.

* Statistic Summary for individual lots is as below,

!["Individual Lot Statistics" ](Resources/Deliverable_2_lot_summary.png?raw=true)

* The Lot1 coils manufactured with mean amd meadian with the same value of 1500.0, varience is 0.9795918 and SD is 0.9897433.

* The Lot2 is also fine with mean value of 1500.20, median value is of 1500.0, Variance is of 7.4693878 (7.5 PSI) and SD is of 2.7330181. So, Lot2 meets the design specification of MechaCar.

* The Lot3 coils has varience of 170 PSI which is very higher than the variance limit of 100 PSI. Hence Lot3 doesn't meet the design specification so, these coils will be rejected.

## T-Test on Suspension Coils

* T-test were conducted on suspension coil dataset to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 
1,500 pounds per square inch. The results are as follows on all lots,

**t-test for all manufacturing lots**
!["t-test on all manufacturing lots" ](Resources/t_test_all_lots.png?raw=true)

Mean : 1498.78 PSI  
p-value : 0.06, which is bit higher than the desired significant level of 0.05 hence null hypothesis is still true.

**t-test for lot1:**
!["t-test on manufacturing lot1" ](Resources/t_test_lot1.png?raw=true)


Mean : 1500 PSI  
p-value : 1, 
Null hypothesis of sample mean being the same as population mean of 1500 PSI, is true for Lot1.

**t-test for lot2:**
!["t-test on manufacturing lot2" ](Resources/t_test_lot2.png?raw=true)


Mean : 1500.2 PSI  
p_value : 0.6, which is higher than 0.05. Hence null hypothesis is true for lot2.


**t-test for lot3:**
!["t-test on manufacturing lot3" ](Resources/t_test_lot3.png?raw=true)

Mean : 1496.14 PSI  
p-value : 0.04 which is lesser than the significant level of 0.05. Hence null hypothesis is rejected for lot3.


## Study Design: MechaCar vs Competition

As a statistical study to compare vehicle performance that collects data on MechaCar and comparable models from the other manufacturers in which consumers heavily consider when thinking of purchasing a car is fuel efficiency as it impacts on costs.

* What metric or metrics are you going to test?
  * Fuel efficiency
  * Costs
  * Horse power

* What is the null hypothesis or alternative hypothesis?

   Cost of MechaCar v/s cost of competition:  
    Null Hypothesis: No statistical difference between MechaCar mean cost and the competition mean cost

    Alternative Hypothesis: MechaCar mean cost is significantly less than the competition mean cost

 * What statistical test would you use to test the hypothesis? And why?

    Linear regression : To compare regression curve/determine the metrics that have the most significant correlation and the competitive cost in manufacturing.

    t-tests, both one sample and two sample t-test : To compare and determine any statistical difference between the distribution's mean from the samples when compared with the competition.

* What data is needed to run the statistical test?

    For Cost : Cost of individual components
    
    For fuel efficiency : Transmission efficiency data












