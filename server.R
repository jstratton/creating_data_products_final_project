library(shiny)

shinyServer(
        function(input, output){
                conversionFactor <- reactive({
                        # No conversion is necessary if the units are the same
                        if(as.character(input$unit) == as.character(input$conversion)){
                                input$temperature
                        }
                        else{
                                # Fahrenheit to Celsius Conversion
                                if(as.character(input$conversion) == "Celsius"){
                                        (input$temperature - 32)*5/9
                                }
                                # Celsius to Fahrenheit Conversion
                                else{
                                        input$temperature*9/5 + 32
                                }
                        }
                })
                
                output$converted_temp = renderText({conversionFactor()})
        }
)