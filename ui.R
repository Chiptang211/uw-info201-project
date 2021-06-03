library(shiny)

shinyUI(navbarPage("MyApp",
                   tabPanel(
                     p("Introduction"),
                     p("This project analyzes a stroke dataset to help users understand whether they are at risk for strokes and how they can mitigate their risks. Using several visual representations, users will be able to determine which factors contribute the most to strokes and what they need to focus on. The dataset we are working with is Kaggle's Stroke Prediction Dataset. The source of the data is confidential for patient confidentiality, but the author, a data scientist from Madrid, Spain, has earned several awards for being a datasets expert. This dataset has earned a gold ranking on Kaggle's website for being one of the best and most reliable datasets on the site."),
                     img(src = "strokeimg.jpg", height = 50, width = 70),
                   ),
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
                   ),
                   tabPanel(
                     p("Conclusion"),
                     p("After conducting this project, we gained many valuable insights on what factors influence strokes the most, such as a person's age, BMI, and marital status. Of all the insights however, we found the highest correlation with a person's age. However, of the factors that a person can control, their BMI had the highest correlation with strokes. People with BMIs over x were  x more likely to suffer a stroke. This means that people with BMIs over x are at risk of having a stroke and people should work on lowering their BMI to reduce their risks."),
                     p("After having analyzed this dataset, we are satisfied with the quality of the data since it provided many useful insights on the typical stroke patient. Since this sample has such varying cases and people with many different conditions, we believe the data gives unbiased results that are representative of the greater population. We also see no issues with this dataset harming certain population groups because it is exclusive of race and equally represents men and women."),
                     p("In the future, it would be interesting to advance this project by using a larger dataset and seeing whether these factors change based on the country people are from.")
                   )
                   
))
