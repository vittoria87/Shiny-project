mpgPrediction <- function(cyl, disp, wt, am) {
  fit <- lm(mpg ~ cyl + disp + wt + am, data = mtcars)
  fit$coef[1] + fit$coef[2]*cyl + fit$coef[3]*disp + fit$coef[4]*wt + fit$coef[5]*as.numeric(am)
}
shinyServer(
  function(input, output) {
    output$cyl <- renderPrint({input$cyl})
    output$disp <- renderPrint({input$disp})
    output$wt <- renderPrint({input$wt})
    output$am <- renderPrint({input$am})
    output$prediction <- renderPrint({mpgPrediction(input$cyl, input$disp, input$wt, input$am)})
  }
)
