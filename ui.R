library(shiny)

shinyUI(
    fluidPage(
      tabPanel(
        "Component 1",
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
      ),
      tabPanel(
        "Component 2",
        titlePanel(),
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
      ),
      tabPanel(
        "Component 3",
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
      ),
    )
)
