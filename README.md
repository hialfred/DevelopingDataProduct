# Coursera Developing Data Product 

#### Tasks 1
1. Write a shiny application with associated supporting documentation. The documentation should be thought of as whatever a user will need to get started using your application.
2. Deploy the application on Rstudio's shiny server
3. Share the application link by pasting it into the text box below
4. Share your server.R and ui.R code on github

The application must include the following:
1. Some form of input (widget: textbox, radio button, checkbox, ...) 
2. Some operation on the ui input in sever.R 
3. Some reactive output displayed as a result of server calculations 
4. You must also include enough documentation so that a novice user could use your application. 
5. The documentation should be at the Shiny website itself. Do not post to an external link.

---
#### Tasks 2
OK, you've made your shiny app, now it's time to make your pitch. You get 5 slides (inclusive of the title slide) to pitch a your app. You're going to create a web page using Slidify or Rstudio Presenter with an html5 slide deck.

Here's what you need
1.5 slides to pitch our idea done in Slidify or Rstudio Presenter
2.Your presentation pushed to github or Rpubs
3.A link to your github or Rpubs presentation pasted into the provided text box

Your presentation must satisfy the following
1.It must be done in Slidify or Rstudio Presenter
2.It must be 5 pages
3.It must be hosted on github or Rpubs
4.It must contained some embedded R code that gets run when slidifying the document

---

## Deployed App User guide

Please also see the readme tab for more detailed information about the dataset and its variables. 

Here we are using the data 'mtcars' to make reactive scatterplots for each variable to 'mpg'. The data was extracted from the 1974 Motor Trend US magazine and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973-74 models).

#### There are three reactive functions for this application in total:
1. The first is selecting the variable to plot and to linear fit against mpg. 
2. The second drop down list selects what color to group the points in the plot by. This adds another dimension to the data display and may help visualize confounders you will need to account for in the linear model.
3. Lastly, the toggle option. If not toggled, it will ab regression line based on the over all 'x-variable' the user has selected. If it is toggled on, then there will be a regression line generated for each subgroup that was selected in the second dropdown. 
