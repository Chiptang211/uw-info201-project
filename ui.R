library(shiny)

shinyUI(
    fluidPage(
      tabPanel(
        img(src = "strokeimg.jpg", height = 50, width = 70),
        h2("Introduction"),
        p("This project analyzes a stroke dataset to help users understand whether they are at risk for strokes and how they can mitigate their risks. Using several visual representations, users will be able to determine which factors contribute the most to strokes and what they need to focus on. The dataset we are working with is Kaggle's Stroke Prediction Dataset. The source of the data is confidential for patient confidentiality, but the author, a data scientist from Madrid, Spain, has earned several awards for being a datasets expert. This dataset has earned a gold ranking on Kaggle's website for being one of the best and most reliable datasets on the site."),
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
