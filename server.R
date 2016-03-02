library(shiny)

shinyServer(
        function(input, output){
                conversionFactor <- reactive({
                        # No conversion is necessary if the units are the same
                        if(as.character(input$unit) == as.character(input$conversion)){
                                paste(input$temperature, input$conversion)
                        }
                        else{
                                # Fahrenheit to Celsius Conversion
                                if(as.character(input$conversion) == "Degrees Celsius"){
                                        paste((input$temperature - 32)*5/9, input$conversion)
                                }
                                # Celsius to Fahrenheit Conversion
                                else{
                                        paste(input$temperature*9/5 + 32, input$conversion)
                                }
                        }
                })
                
                conversionDescription <- reactive({
                        paste(input$temperature, input$unit, "=")
                })
                
                output$converted_temp = renderText({paste(conversionDescription(), conversionFactor())})
        }
)