library(shiny)

shinyUI(navbarPage("MyApp",
      tabPanel(
        "Component 1",
        titlePanel("Stroke likelihood"),
        sidebarPanel(
          checkboxGroupInput('ever_married', label = 'Married', choices = list("Yes"="Yes",
                                                                         "No"="No"),
                       selected = "Yes"),
          checkboxGroupInput('gender', label = 'Gender', choices = list("Male"="Male",
                                                                  "Female"="Female",
                                                                  "Other"="Other"),
                       selected = "Other"),
          checkboxGroupInput('hypertension', label = 'Hypertension', choices = list("Yes"=1,
                                                                              "No"=0),
                       selected = 1),
          checkboxGroupInput('smoking_status', label = 'Smoking', choices = list("Formerly"="formerly smoked",
                                                                           "Never"="never smoked",
                                                                           "Smokes"="smokes",
                                                                           "Unknown"="Unknown"),
                       selected = "smokes"),
          checkboxGroupInput('work_type', label = 'Work Type', choices = list("Children"="children",
                                                                        "Government"="Govt_job",
                                                                        "Never Worked"="Never_worked",
                                                                        "Private"="Private",
                                                                        "Self-employed"="Self-employed"),
                       selected = "Private"),
          checkboxGroupInput('Residence_type', label = 'Residence Type', choices = list("Rural"="Rural",
                                                                                  "Urban"="Urban"),
                       selected = "Urban"),    
                     ),
        
        mainPanel(
          plotOutput("disPlot")
        )
      ),
      tabPanel(
        "Component 2",
        titlePanel("Stroke likelihood"),
        sidebarPanel(
          checkboxGroupInput('ever_married', label = 'Married', choices = list("Yes"="Yes",
                                                                               "No"="No"),
                             selected = "Yes"),
          checkboxGroupInput('gender', label = 'Gender', choices = list("Male"="Male",
                                                                        "Female"="Female",
                                                                        "Other"="Other"),
                             selected = "Other"),
          checkboxGroupInput('hypertension', label = 'Hypertension', choices = list("Yes"=1,
                                                                                    "No"=0),
                             selected = 1),
          checkboxGroupInput('smoking_status', label = 'Smoking', choices = list("Formerly"="formerly smoked",
                                                                                 "Never"="never smoked",
                                                                                 "Smokes"="smokes",
                                                                                 "Unknown"="Unknown"),
                             selected = "smokes"),
          checkboxGroupInput('work_type', label = 'Work Type', choices = list("Children"="children",
                                                                              "Government"="Govt_job",
                                                                              "Never Worked"="Never_worked",
                                                                              "Private"="Private",
                                                                              "Self-employed"="Self-employed"),
                             selected = "Private"),
          checkboxGroupInput('Residence_type', label = 'Residence Type', choices = list("Rural"="Rural",
                                                                                        "Urban"="Urban"),
                             selected = "Urban"),    
        ),
        
        mainPanel(
          plotOutput("ageVsBmi")
        )
      ),
      tabPanel(
        "Component 3",
        titlePanel("Stroke likelihood"),
        sidebarPanel(
          checkboxGroupInput('ever_married', label = 'Married', choices = list("Yes"="Yes",
                                                                               "No"="No"),
                             selected = "Yes"),
          checkboxGroupInput('gender', label = 'Gender', choices = list("Male"="Male",
                                                                        "Female"="Female",
                                                                        "Other"="Other"),
                             selected = "Other"),
          checkboxGroupInput('hypertension', label = 'Hypertension', choices = list("Yes"=1,
                                                                                    "No"=0),
                             selected = 1),
          checkboxGroupInput('smoking_status', label = 'Smoking', choices = list("Formerly"="formerly smoked",
                                                                                 "Never"="never smoked",
                                                                                 "Smokes"="smokes",
                                                                                 "Unknown"="Unknown"),
                             selected = "smokes"),
          checkboxGroupInput('work_type', label = 'Work Type', choices = list("Children"="children",
                                                                              "Government"="Govt_job",
                                                                              "Never Worked"="Never_worked",
                                                                              "Private"="Private",
                                                                              "Self-employed"="Self-employed"),
                             selected = "Private"),
          checkboxGroupInput('Residence_type', label = 'Residence Type', choices = list("Rural"="Rural",
                                                                                        "Urban"="Urban"),
                             selected = "Urban"),    
        ),
        
        mainPanel(
          plotOutput("ageVsGlucose")
        )
      )

))
