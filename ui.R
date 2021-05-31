library(shiny)

shinyUI(
    fluidPage(
        titlePanel("Stroke likelihood"),
        sidebarLayout(
            sidebarPanel(
                sliderInput(),
                radioButtons(),
                uiOutput()
            )
        ),
        mainPanel(
            plotOutput(),
            textOutput()
        )
    )
)