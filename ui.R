shinyUI(pageWithSidebar(
    headerPanel("Chick weight prediction"),
    sidebarPanel(
        h2("Input"),
        sliderInput(inputId="chickAge", label = "Chick Age (days)", value=7, min=7, max=21),
        numericInput(inputId="diet", label = "Diet", value=1, min=1, max=4, step=1)
    ),
    mainPanel(
        h2("Chick weight prediction"),
        h4("This application use linear prediction model of the ChickWeight dataset 
           to predict chick weight (in mg). by age (days) and Diet (type 1-4)"),
        h2("Usage:"),
        h4("Select Chick Age from the slider bar for chick age from 7-21 days"),
        h4("Select Diet (1-4) from the numeric input"),
        h4("Range of predicted chick weight is shown in the Result section below"),
        h2("Result:"),
        p('Min weight (gm):'),
        textOutput('minWeight'),
        p('Max weight (gm):'),
        textOutput('maxWeight')
    )
))