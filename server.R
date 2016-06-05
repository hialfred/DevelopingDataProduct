library(shiny) 
library(car)
library(datasets) 

mtcars <- data.frame(apply(mtcars, 2, as.numeric) )

shinyServer(function(input, output) {
  serverForumla <- reactive({
    paste("mpg ~", input$variable)
  })
  serverForumlaNumeric <- reactive({
    paste("mpg ~", "as.numeric(", input$variable, ")")
  })
  serverRegline <- reactive({
    lm(as.formula( serverForumlaNumeric() ), data = mtcars)
  })
  
  output$title <- renderText({
    serverForumla()
  })
  output$plot <- renderPlot({
    scatterplot(as.formula( serverForumla() ), data = mtcars, 
                groups = as.factor(mtcars[ , input$groups ]),
                by.groups = input$groupRegToggle,
                legend.title = print(input$groups),
                legend.coords = "topleft",
                reg.line = lm,
                boxplot = FALSE,
                smoother = FALSE, 
                grid = TRUE,
                id.n = 0,
                cex = 2, 
                labels = rep("", nrow(mtcars))
    )
  }, height = 400, width = 400)
  
  output$fit <- renderPrint({
    summary(serverRegline() )
  })
})

