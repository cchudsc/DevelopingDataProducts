library(shiny)
chick.lm = lm(weight~Time+Diet, data=ChickWeight)
predictChickWeight <- function (chickAge, diet) {
    df <- ChickWeight[1,c(2,4)] 
    df$Time <- chickAge
    df$Diet <- diet

    predict(chick.lm, df, interval="predict")
}
shinyServer(
    function(input, output) {
         preditWeight <- reactive({predictChickWeight(as.numeric(input$chickAge), as.character(input$diet))})
         output$minWeight <- renderText({preditWeight()[2]})
         output$maxWeight <- renderText({preditWeight()[3]})
    }
)