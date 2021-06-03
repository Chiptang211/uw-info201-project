library(shiny)

shinyUI(
    fluidPage(
      tabPanel(
        "Component 1",
        titlePanel("Stroke likelihood"),
        sidebarLayout(
          sidebarPanel,
          mainPanel,
          position = c("left", "right"),
          fluid = TRUE
        ),

        sidebarPanel(
          radioButtons('ever_married', label = 'Married', choices = list("Yes"="Yes",
                                                                         "No"="No"),
                       selected = "Yes"),
          radioButtons('gender', label = 'Gender', choices = list("Male"="Male",
                                                                  "Female"="Female",
                                                                  "Other"="Other"),
                       selected = "Other"),
          radioButtons('hypertension', label = 'Hypertension', choices = list("Yes"=1,
                                                                              "No"=0),
                       selected = 1),
          radioButtons('smoking_status', label = 'Smoking', choices = list("Formerly"="formerly smoked",
                                                                           "Never"="never smoked",
                                                                           "Smokes"="smokes",
                                                                           "Unknown"="Unknown"),
                       selected = "smokes"),
          radioButtons('work_type', label = 'Work Type', choices = list("Children"="children",
                                                                        "Government"="Govt_job",
                                                                        "Never Worked"="Never_worked",
                                                                        "Private"="Private",
                                                                        "Self-employed"="Self-employed"),
                       selected = "Private"),
          radioButtons('Residence_type', label = 'Residence Type', choices = list("Rural"="Rural",
                                                                                  "Urban"="Urban"),
                       selected = "Urban"),
                     ),


        mainPanel(
          plotOutput("disPlot"),
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
