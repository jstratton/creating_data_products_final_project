library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("Temperature Unit Converter"),
        sidebarPanel(
                numericInput("temperature", label = "Enter Temperature Here:", value = 0),
                
                radioButtons("unit", label = "Original Units", 
                             choices = c("Degrees Fahrenheit", "Degrees Celsius")),
                
                radioButtons("conversion", label = "Desired Units", 
                             choices = c("Degrees Fahrenheit", "Degrees Celsius"))
                ),
        mainPanel(
                verbatimTextOutput("converted_temp")
        )
))