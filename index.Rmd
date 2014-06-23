---
title       : Mileage Prediction App
subtitle    : Developing Data Products
author      : Palash Goyal
job         : Coursera
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Problem Statement

We are trying to find the fitted value and the confidence interval for the mileage value for any car, given its weight and number of cylinders.

The **mtcars** data set has 11 variables, among which we have taken *mpg* as the outcome variable and *wt* and *cyl* as the prediction variables for the new data set.

Info about the 3 variables :
- *mpg* : Miles/(US) gallon
- *wt* : Weight (lb/1000)
- *cyl* : Number of Cylinders

Out of the total 10 variables, other than *mpg* variable, in the **mtcars** data set, we have assumed *wt* and *cyl* as the most weighted predictor variables to the outcome variable *mpg*.

--- .class #id 

## Model Fit

We have applied the Linear Model Fit on the **mtcars** data set, and have then used the resulted model on the new data values of *wt* and *cyl* taken from the user as input in our application.

We have used the *predict* function to get the predicted mileage for the car on the basis of weight and number of cylinders as parameters.

To get the accuracy of the prediction value, we are calculating the confidence interval around our prediction. 

--- .class #id

## Mileage App Working

Mileage App Link : <a href="https://palashgoyal1.shinyapps.io/project/"> Shiny App </a>

The *Mileage App*  calculates the predicted value and a 95 percent of confidence interval around the predicted mean by setting the argument *interval* to **confidence** in the *predict* command : 

- perdict(modelFit, newdata= newData.value, interval='confidence')

This command gives three values : 
- *fit*,
- *lwr*,
- *upr* .

Each of these corresponds to fitted, lower and upper values respectively.

--- .class #id

## Example

Taking the values of Weight (wt) as 2.5 lb/1000 and number of cylinders (cyl) as 6, we have received the fitted value of Miles per gallon as 22.662 miles per gallon.

The confidence interval for the predicted mean value is 21.304 and 24.02 miles per gallon. 

