library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("Temperature Unit Converter"),
        sidebarPanel(
                numericInput("temperature", label = "Enter Temperature Here:", value = 0),
                
                radioButtons("unit", label = "Original Units", 
                             choices = c("Degrees Fahrenheit", "Degrees Celsius"))
                ),
        mainPanel(
                h4("Converted Temperature"),
                
                verbatimTextOutput("converted_temp")
        )
))