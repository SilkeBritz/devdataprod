x <- 0
y <- 0

shinyServer(
        function(input, output) {
                output$newPlot <- renderPlot({
                        plot(x, y, xlim = c(0, 10), ylim = c(0, 10), lwd=0)
                        a <- input$Intercept
                        b <- input$Slope
                        abline(a, b, col="red", lwd=3)
                })
        }
)