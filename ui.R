library(shiny)

shinyUI(
    fluidPage(
        titlePanel("Stroke likelihood"),
        sidebarLayout(
            sidebarPanel(
                sliderInput(),
                radioButtons('Inputs', label = 'Demographic Choices', choices = list("ever_married" = c("Yes", "No"), 
                                                                                     "gender" = c("Male", "Female", "Other"),
                                                                                     "hypertension" = c("0", "1"), 
                                                                                     "smoking_status" = c("formerly smoked", "never smoked", 
                                                                                                          "smokes", "unknown"),
                                                                                     "work_type" = c("children", "Govt_job", "Self-employed",
                                                                                                     "Private", "Never_worked"),
                                                                                     "Residence_type" = c("Urban", "Rural"))),
                uiOutput()
            )
        ),
        mainPanel(
            plotOutput(),
            textOutput()
        )
    )
)
