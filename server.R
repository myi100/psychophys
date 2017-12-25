library(shiny)
library(lubridate)

# Define server logic required to draw a histogram
shinyServer(function(input, output, session) {
  
  # Initials
  initials <- reactive({
    validate(
      need(input$initials != "", "Don't forget to enter initials!")
    )
    toupper(input$initials)
  })

  outputDirectory <- reactive({
    tmsp <- gsub(":", "_", Sys.time())
    tmsp <- gsub(" ", "_", tmsp)
    paste("Psychophys_Tutorial_A", initials(), tmsp, sep="_")
  })
  
  output$validateOutputDirectory <- renderUI({
    HTML(paste("<font color=\"green\">", outputDirectory(), "</font><br/>", helpText("You can find this directory on your Desktop."), sep = ''))
  })
  
  # Sleep intervals
  sleepIntervals <- reactive({
    input$sleepIntervals
  })
  
  output$validateSleepIntervals <- renderUI({
    if(length(sleepIntervals()$datapath)== 0){
      HTML("<font color=\"red\">Don't forget to upload sleep intervals data!</font>")
    } else{
      HTML(paste("<font color=\"green\"> Successfully uploaded: <strong>", sleepIntervals()$name, "</strong></font>"))
    }
  })
  
  macro0 <- eventReactive(input$runA, {
    if(Sys.info()['sysname'] != "Windows"){
      
    } else{
      
    }
    # 
  })

  output$consoleA <- renderText({
    cap()
  })
  
  


})
