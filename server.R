library(shiny)
library(ggplot2)
library(dplyr)

data <- read.csv("healthcare-dataset-stroke-data.csv")

shinyServer(function(input, output) {
  displayGraph <- reactive({
    graph <- data %>%
      select(age, stroke,hypertension,ever_married,gender,smoking_status,work_type,Residence_type,bmi,avg_glucose_level)%>%
      group_by(age)%>%
      filter(stroke == "1")%>%
      filter(hypertension %in% input$hypertension)%>%
      filter(ever_married %in% input$ever_married)%>%
      filter(gender %in% input$gender)%>%
      filter(smoking_status %in% input$smoking_status)%>%
      filter(work_type %in% input$work_type)%>%
      filter(Residence_type %in% input$Residence_type)%>%
      mutate(totals_strokes = n())
  })
  
  output$disPlot <- renderPlot({
    ggplot(displayGraph(), aes(age, totals_strokes)) +
      geom_line()
  })
  
  output$ageVsBmi <- renderPlot({
    ggplot(displayGraph(), aes(x=age, y=bmi)) + 
      geom_point(size=2, shape=21 )
  })
  
  output$ageVsGlucose <- renderPlot({
    ggplot(displayGraph(), aes(x=age, y=avg_glucose_level)) + 
      geom_point(size=2, shape=21)
  })
  
  
})
