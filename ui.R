library(shiny)
shinyUI(
  pageWithSidebar(
    # Prediction of Miles per gallon for mtcars
    headerPanel("Miles per gallon prediction"),
    sidebarPanel(
      numericInput('cyl', 'Number of cylinders', 4, min = 4, max = 8, step = 1),
      numericInput('disp', 'Displacement (cu. in.)', 196, min = 71.0, max = 472.0, step = 1),
      numericInput('wt', 'Weight', 3, min = 1.0, max = 5.0, step = 0.1),
      radioButtons("am", "Transmission", c("automatic" = 0, "manual" = 1))
    ),
    mainPanel(
      h3('Results of prediction'),
      h4('You entered'),
      verbatimTextOutput('cyl'),
      verbatimTextOutput('disp'),
      verbatimTextOutput('wt'),
      verbatimTextOutput('am'),
      h4('Which resulted in a prediction of '),
      verbatimTextOutput("prediction")
    )
  )
)