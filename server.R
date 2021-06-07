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
      filter(gender %in% input$gender)%>%
      filter(smoking_status %in% input$smoking_status)%>%
      mutate(totals_strokes = n())
  })
  
  #builds the first graph based on age and # of strokes
  output$disPlot <- renderPlot({
    ggplot(displayGraph(), aes(age, totals_strokes)) +
      geom_line()
  })
  
  
  bmiAndglucose <- reactive({
    if(input$graph_choice == "AgevsBMI"){
      graph1 <- data%>%
        select(age,bmi,stroke,gender,smoking_status)%>%
        group_by(age)%>%
        filter(stroke == "1")%>%
        filter(gender %in% input$gender_choice)%>%
        filter(smoking_status %in% input$smoking_status_choice)
    }else{
      graph2 <- data%>%
        select(age,avg_glucose_level, stroke,gender,smoking_status)%>%
        group_by(age)%>%
        filter(stroke == "1")%>%
        filter(gender %in% input$gender_choice)%>%
        filter(smoking_status %in% input$smoking_status_choice)  
    }
  })
  
  output$bmiAndglucoseGraph <- renderPlot({
    if(input$graph_choice == "AgevsBMI"){
      ggplot(bmiAndglucose(), aes(x = age, y = bmi))+
        geom_point(size = 2, shape = 21)+
        geom_smooth(method = "loess", se = F)
    }else{
      ggplot(bmiAndglucose(), aes(x = age, y = avg_glucose_level))+
        geom_point(size = 2, shape = 21)+
        geom_smooth(method = "loess", se = F)
    }
  })
  
  output$myImage <- renderImage({
    # A temp file to save the output.
    # This file will be removed later by renderImage
    outfile <- tempfile("strokeimg.jpg")
    list(src = outfile,
         contentType = "strokeimg.jpg",
         width = 60,
         height = 60,
         alt = "a diagram of a stroke")
  }, deleteFile = FALSE)
  
  heartdiseaseVsstroke <- reactive({
    graph3 <- data %>%
      select(heart_disease,stroke,age, hypertension,ever_married,gender,smoking_status,work_type,Residence_type)%>%
      group_by(age)%>%
      filter(hypertension %in% input$hypertension_1)%>%
      filter(ever_married %in% input$ever_married_1)%>%
      filter(gender %in% input$gender_1)%>%
      filter(smoking_status %in% input$smoking_status_1)%>%
      filter(work_type %in% input$work_type_1)%>%
      filter(Residence_type %in% input$Residence_type_1)
  })
  
  output$heartdiseaseVsstrokeGraph <- renderPlot({
    ggplot(heartdiseaseVsstroke(), aes(heart_disease,stroke))+
      geom_histogram(stat = "identity")
  })
  
})
