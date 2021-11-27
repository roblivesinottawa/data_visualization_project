library(shiny)
library(ggplot2)

shinyServer(function(input, output) {
    output$distPlot <- renderPlot({
        bins <- input$bins
        ggplot(faithful, aes(x = waiting)) +
        geom_histogram(bins = bins) +
        labs(x = "Waiting time (minutes)", y = "Frequency", title = "Histogram of waiting time to next eruption"
        ) + theme(text = element_text(size = 20))
    })
})