library(shiny)

shinyUI(
  
  navbarPage("Psychophys",
             navbarMenu("Tutorials",
                        tabPanel("A: Derive Sleep & Apocalpyse Vars",
                                 tags$head(
                                   tags$style(HTML(".shiny-output-error-validation {color: red;} "))
                                   ),
                                 sidebarLayout(
                                   sidebarPanel(
                                     strong("Tutorial A: Derive Sleep & Apocalyse Variables"),
                                     br(),
                                     br(),
                                     helpText("This tutorial is for correcting dates from sleep intervals data where participant slept after midnight."),
                                     br(),
                                     strong("Output files will be written to:"),
                                     htmlOutput("validateOutputDirectory"),
                                     br(),
                                     strong("Sleep intervals data:"),
                                     htmlOutput("validateSleepIntervals"),
                                     br(),
                                     actionButton("runA", "Run Macro A")
                                    
                                   ),
                                   mainPanel(
                                     textInput("initials", "Step 1: Enter Initials", placeholder="e.g., MYI"),
                                     helpText("Initials will be used for naming files. No spaces, limit to 5 characters and do not include any special characters (e.g., !@#$)."),
                                     br(),
                                     fileInput("sleepIntervals", "Step 2: Upload sleep intervals data",
                                               accept = c("csv", ".csv")
                                     ),
                                     helpText("The sleep intervals data should be in .csv format and contains..."),
                                     br(),
                                     verbatimTextOutput("consoleA")
                                   )

                                 ),
                                 hr(),
                                 h6("Pediatric Public Health Psychology Lab (PPHP), Concordia Unviersity")
                        )
  )
))




# # Define UI for application that draws a histogram
# shinyUI(fluidPage(
#   
#   # Application title
#   titlePanel("Psychophys"),
#   br(),
#   h5("Analysis of circadian rhythms underlying 24 hour ambulatory data."),
#   h6("Pediatric Public Health Psychology Lab (PPHP), Concordia Unviersity"),
#   br(),
#   # Sidebar with a slider input for number of bins 
#   sidebarLayout(
#     sidebarPanel(
#       selectInput("tutorial", "Select Tutorial:",
#                   c("A: Derive Sleep & Apocalpyse Vars" = "a",
#                     "B: Prepare Physial Activity Vars" = "b",
#                     "C: Cosinor (Physical Activity)" = "c"))
#     ),
#     
#     # Show a plot of the generated distribution
#     mainPanel(
#       verbatimTextOutput("console")
#     )
#   )
# ))
