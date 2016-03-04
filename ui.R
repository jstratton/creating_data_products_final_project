library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("Temperature Unit Converter"),
        sidebarPanel(
                numericInput("temperature", label = "Enter Temperature Here:", value = 0),
                
                radioButtons("unit", label = "Select Original Units Here:", 
                             choices = c("Degrees Fahrenheit", "Degrees Celsius"))
                ),
        mainPanel(
                h4("Converted Temperature"),
                
                verbatimTextOutput("converted_temp"),
                
                h4("This app takes temperatures in degrees Celsius and carries
                   out the calculations to get the temperature in degrees
                   Fahrenheit, and vice versa."),
                
                h4("Enter the temperature to be converted and select its given units using
                   the inputs to the left."),
                
                h4("The app automatically converts to the unselected temperature
                        unit when you enter a temperature."),
                
                h4("For example, if degrees Fahrenheit is selected as the entered
                        temperature's unit the app automatically converts to
                        degrees Celsius.")
        )
))