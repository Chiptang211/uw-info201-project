library(shiny)
library(imager)


im <- load.image("strokeimg.jpg")


shinyUI(navbarPage("Stroke Susceptibility",
                   tabPanel(
                     p("Introduction"),
                     p("This project analyzes a stroke dataset to help users understand whether they are at risk for strokes and how they can mitigate their risks. Using several visual representations, users will be able to determine which factors contribute the most to strokes and what they need to focus on. The dataset we are working with is Kaggle's Stroke Prediction Dataset. The source of the data is confidential for patient confidentiality, but the author, a data scientist from Madrid, Spain, has earned several awards for being a datasets expert. This dataset has earned a gold ranking on Kaggle's website for being one of the best and most reliable datasets on the site."),
                     imageOutput("myImage"),
                   ),
                   tabPanel(
                     "Total Strokes",
                     titlePanel("Stroke Data"),
                     sidebarPanel(
                       checkboxGroupInput('gender', label = 'Gender', choices = list("Male"="Male",
                                                                                     "Female"="Female",
                                                                                     "Other"="Other"),
                                          selected = "Other"),
                       checkboxGroupInput('smoking_status', label = 'Smoking', choices = list("Formerly"="formerly smoked",
                                                                                              "Never"="never smoked",
                                                                                              "Smokes"="smokes",
                                                                                              "Unknown"="Unknown"),
                                          selected = "smokes")
                     ),

                     mainPanel(
                       plotOutput("disPlot")
                     ),
                     p("This chart shows the age as compared to the amount of strokes that people have had, as an average, in that age group, with options based on gender and smoking."),
                     p("While being at an age where a stroke is more likely to occur does not guarantee a stroke, it is a solid indicator that it is a larger issue  than it would be for younger age groups."),

                   ),
                   tabPanel(
                     "Age vs. BMI/Glucose",
                     titlePanel("Stroke likelihood"),
                     sidebarPanel(
                       selectInput('graph_choice', label = 'BMI or Glucose', choices = list("AgevsBMI" = "AgevsBMI",
                                                                                            "AgevsGlucose" = "AgevsGlucose")),
                       checkboxGroupInput('gender_choice', label = 'Gender', choices = list("Male"="Male",
                                                                                            "Female"="Female",
                                                                                            "Other"="Other"),
                                          selected = "Other"),
                       checkboxGroupInput('smoking_status_choice', label = 'Smoking', choices = list("Formerly"="formerly smoked",
                                                                                                     "Never"="never smoked",
                                                                                                     "Smokes"="smokes",
                                                                                                     "Unknown"="Unknown"),
                                          selected = "smokes")
                     ),

                     mainPanel(
                       plotOutput("bmiAndglucoseGraph"),
                     ),
                     p("This chart specifically focuses down on the BMI or Glucose options compared to age in people that have experienced strokes."),
                     p("The use of this data comes from the averages, in which if a person is below the average BMI or glucose level at their age group, they have a lesser likelihood of having a stroke as a side effect of a high BMI or high glucose level. "),
                   ),
                   tabPanel(
                     "Heart Disease vs. Strokes",
                     titlePanel("Heart Disease vs. Strokes"),
                     sidebarPanel(
                       checkboxGroupInput('ever_married_1', label = 'Married', choices = list("Yes"="Yes",
                                                                                              "No"="No"),
                                          selected = "Yes"),
                       checkboxGroupInput('gender_1', label = 'Gender', choices = list("Male"="Male",
                                                                                       "Female"="Female",
                                                                                       "Other"="Other"),
                                          selected = "Other"),
                       checkboxGroupInput('hypertension_1', label = 'Hypertension', choices = list("Yes"=1,
                                                                                                   "No"=0),
                                          selected = 1),
                       checkboxGroupInput('smoking_status_1', label = 'Smoking', choices = list("Formerly"="formerly smoked",
                                                                                                "Never"="never smoked",
                                                                                                "Smokes"="smokes",
                                                                                                "Unknown"="Unknown"),
                                          selected = "smokes"),
                       checkboxGroupInput('work_type_1', label = 'Work Type', choices = list("Children"="children",
                                                                                             "Government"="Govt_job",
                                                                                             "Never Worked"="Never_worked",
                                                                                             "Private"="Private",
                                                                                             "Self-employed"="Self-employed"),
                                          selected = "Private"),
                       checkboxGroupInput('Residence_type_1', label = 'Residence Type', choices = list("Rural"="Rural",
                                                                                                       "Urban"="Urban"),
                                          selected = "Urban"),
                     ),

                     mainPanel(
                       plotOutput("heartdiseaseVsstrokeGraph")
                     ),
                     p("This chart specifically focuses on the possibility of strokes compared to heart disease, with several conditions that affect heart health over a lifetime to select from as customization."),
                     p("This chart is better used for comparing one's situation personally, where it is more evident with set conditions to see whether personal conditions lead to more strokes, or if people in the same conditions tend to avoid having strokes.s"),
                   ),
                   tabPanel(
                     p("Conclusion"),
                     p("After conducting this project, we gained many valuable insights on what factors influence strokes the most, such as a person's age, BMI, and marital status. Of all the insights however, we found the highest correlation with a person's age. However, of the factors that a person can control, their BMI had the highest correlation with strokes. People with high BMIs were more likely to suffer a stroke. This means that people with  BMIs over x are at risk of having a stroke and people should work on lowering their BMI to reduce their risks."),
                     p("After having analyzed this dataset, we are satisfied with the quality of the data since it provided many useful insights on the typical stroke patient. Since this sample has such varying cases and people with many different conditions, we believe the data gives unbiased results that are representative of the greater population. We also see no issues with this dataset harming certain population groups because it is exclusive of race and equally represents men and women."),
                     p("In the future, it would be interesting to advance this project by using a larger dataset and seeing whether these factors change based on the country people are from.")
                   )

))
