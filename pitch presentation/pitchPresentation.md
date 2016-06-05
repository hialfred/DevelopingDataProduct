'mtcars' relationship between variables and MPG - shiny scatterplot
========================================================
author: Red Chan
date: 
autosize: true

About the App
========================================================
# Introduction:

Dataset 'mtcars' : The data was extracted from the 1974 Motor Trend US magazine and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973-74 models). The purpose of the app is to look at how each of the covariates in mtcars relate to miles per gallon (mpg) and to perform univariate regression against mpg.

# Task 1 - Deploy App

- https://hialfred.shinyapps.io/shiny/ 
- https://github.com/hialfred/DevelopingDataProduct

# Task 2 - Reproducible Pitch Presentation
- https://github.com/hialfred/DevelopingDataProduct/pitch presentation/


Dataset Description
========================================================

# Motor Trend Car Road Tests

Dataset 'mtcars' : The data was extracted from the 1974 Motor Trend US magazine and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973-74 models).

# Source

Henderson and Velleman (1981), Building multiple regression models interactively. Biometrics, 37, 391-411.


```
'data.frame':	32 obs. of  11 variables:
 $ mpg : num  21 21 22.8 21.4 18.7 18.1 14.3 24.4 22.8 19.2 ...
 $ cyl : num  6 6 4 6 8 6 8 4 4 6 ...
 $ disp: num  160 160 108 258 360 ...
 $ hp  : num  110 110 93 110 175 105 245 62 95 123 ...
 $ drat: num  3.9 3.9 3.85 3.08 3.15 2.76 3.21 3.69 3.92 3.92 ...
 $ wt  : num  2.62 2.88 2.32 3.21 3.44 ...
 $ qsec: num  16.5 17 18.6 19.4 17 ...
 $ vs  : num  0 0 1 1 0 1 0 1 1 1 ...
 $ am  : num  1 1 1 0 0 0 0 0 0 0 ...
 $ gear: num  4 4 4 3 3 3 3 4 4 4 ...
 $ carb: num  4 4 1 1 2 1 4 2 2 4 ...
```

# Variables
========================================================

A data frame with 32 observations on 11 variables.

| column | name | type | detail |
| --- | --- |  --- |  --- |  --- |
| [, 1] | mpg | numeric | Miles/(US) gallon |
| [, 2] | cyl | categorical | Number of cylinders |
| [, 3] | disp | numeric | Displacement (cu.in.) |
| [, 4] | hp | numeric | Gross horsepower |
| [, 5] | drat | numeric | Rear axle ratio |
| [, 6] | wt | numeric | Weight (lb/1000) |
| [, 7] | qsec | numeric | 1/4 mile time |
| [, 8] | vs | categorical | V/S |
| [, 9] | am | categorical | Transmission (0 = automatic, 1 = manual) |
| [,10] | gear | categorical | Number of forward gears |
| [,11] | carb | categorical | Number of carburetors |
