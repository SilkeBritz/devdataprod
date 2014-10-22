shinyUI(pageWithSidebar(
        headerPanel("Create Line"),
        sidebarPanel(
                h3('Instructions'),
                p('This app creates a straight line with below input of the slope and the intercept.'),
                h4('y = Intercept + Slope * x'),
                p('  '),
                
                sliderInput('Slope', 'Slope',value = 1, min = -5, max = 5, step = 0.5),
                sliderInput('Intercept', 'Intercept',value = 0, min = 0, max = 10, step = 1)
                
        ),
        mainPanel(
                plotOutput('newPlot')
        )
))