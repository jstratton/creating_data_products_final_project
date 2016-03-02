library(shiny)

shinyServer(
        function(input, output){
                conversionFactor <- reactive({
                        # Fahrenheit to Celsius Conversion
                        if(as.character(input$unit) == "Degrees Fahrenheit"){
                                paste("=", (input$temperature - 32)*5/9, "Degrees Celsius")
                        }
                        # Celsius to Fahrenheit Conversion
                        else{
                                paste("=", input$temperature*9/5 + 32, "Degrees Fahrenheit")
                        }
                })
                
                output$converted_temp = renderText({paste(conversionFactor())})
        }
)