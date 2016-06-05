library(shiny)

shinyUI(
  navbarPage("mtcars dataset",
             tabPanel("Read Me",
                      h3("Motor Trend Car Road Tests"),
                      hr(),
                      h5("Description"),
                      p("The data was extracted from the 1974 Motor Trend US magazine and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973-74 models)"),
                      hr(),
                      h5("Dataframe Information"),
                      p("A data frame with 32 observations on 11 variables."),
                      p("  [, 1]   mpg	 numeric: Miles/(US) gallon"),
                      p("  [, 2]	 cyl	 categorical: Number of cylinders"), 
                      p("  [, 3]	 disp	 numeric: Displacement (cu.in.)"), 
                      p("  [, 4]	 hp	 numeric: Gross horsepower"), 
                      p("  [, 5]	 drat	 numeric: Rear axle ratio"), 
                      p("  [, 6]	 wt	 numeric: Weight (lb/1000)"), 
                      p("  [, 7]	 qsec	 numeric: 1/4 mile time"), 
                      p("  [, 8]	 vs	 categorical: V/S"), 
                      p("  [, 9]	 am	 categorical: Transmission (0 = automatic, 1 = manual)"), 
                      p("  [,10]	 gear	 categorical: Number of forward gears"), 
                      p("  [,11]	 carb	 categorical: Number of carburetors"), 
                      hr(),
                      h5("Source"), 
                      p("Henderson and Velleman (1981), Building multiple regression models interactively. Biometrics, 37, 391-411.")
             ),
             tabPanel("Analysis",
                      pageWithSidebar(
                        h3("Variable Association to miles per gallon (MPG)"),
                        sidebarPanel(
                        p("Here we will plot the selected variable on the x-axis against the mpg variable. The second option will be to select the grouping with which to color the points by. Lastly, the toggle option by default will draw ab regression line for all y against x. If toggled on, then there will be a regression line generated for each subgroup for the selected grouping variable. Please refer to the 'Read Me' tab for more details about the dataset and each variable."),
                          selectInput("variable", "Variable on X-axis:",
                                      c("Number of cylinders" = "cyl",
                                        "Displacement (cu.in.)" = "disp",
                                        "Gross horsepower" = "hp",
                                        "Rear axle ratio" = "drat",
                                        "Weight (lb/1000)" = "wt",
                                        "1/4 mile time" = "qsec",
                                        "V/S" = "vs",
                                        "Transmission" = "am",
                                        "Number of forward gears" = "gear",
                                        "Number of carburetors" = "carb"
                                      )),
                          selectInput("groups", "Color by Grouping:",
                                      c("Number of cylinders" = "cyl",
                                        "V/S" = "vs",
                                        "Transmission" = "am",
                                        "Number of forward gears" = "gear",
                                        "Number of carburetors" = "carb"
                                      )),
                          checkboxInput("groupRegToggle", 
                                        "Regression Line By Group", 
                                        value = FALSE, width = NULL)
                        ),
                        mainPanel(
                          h3(textOutput("title")),
                          tabsetPanel(type = "tabs", 
                                      tabPanel("Plot", 
                                               plotOutput("plot") 
                                      ),
                                      tabPanel("Univariate Fit", 
                                               verbatimTextOutput("fit")
                                      )
                          )
                        )
                      )
             )
             
  )
)