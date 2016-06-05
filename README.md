# Coursera Developing Data Product 

#### Tasks
1. Write a shiny application with associated supporting documentation. The documentation should be thought of as whatever a user will need to get started using your application.
2. Deploy the application on Rstudio's shiny server
3. Share the application link by pasting it into the text box below
4. Share your server.R and ui.R code on github

---

#### The application must include the following:
1. Some form of input (widget: textbox, radio button, checkbox, ...) 
2. Some operation on the ui input in sever.R 
3. Some reactive output displayed as a result of server calculations 
4. You must also include enough documentation so that a novice user could use your application. 
5. The documentation should be at the Shiny website itself. Do not post to an external link.

---

## User guide

Please also see the readme tab for more detailed information about the dataset and its variables. 

Here we are using the data 'mtcars' to make reactive scatterplots for each variable to 'mpg'. The data was extracted from the 1974 Motor Trend US magazine and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973-74 models).

## There are three reactive functions for this application in total:
1. The first is selecting the variable to plot and to linear fit against mpg. 
2. The second drop down list selects what color to group the points in the plot by. This adds another dimension to the data display and may help visualize confounders you will need to account for in the linear model.
3. Lastly, the toggle option. If not toggled, it will ab regression line based on the over all 'x-variable' the user has selected. If it is toggled on, then there will be a regression line generated for each subgroup that was selected in the second dropdown. 
