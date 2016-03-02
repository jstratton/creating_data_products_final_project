library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("Temperature Unit Converter"),
        sidebarPanel(
                numericInput("temperature", label = "Temperature", value = 0),
                radioButtons("unit", label = "Degrees", 
                             choices = c("Fahrenheit", "Celsius"))),
        mainPanel(
                h4("Is Equivalent To"),
                
                verbatimTextOutput("converted_temp"),
                
                radioButtons("conversion", label = "Degrees", 
                             choices = c("Fahrenheit", "Celsius"))
        )
))