#
# This is the user-interface definition of a Shiny web application.
# Creator: Sergio Castro
# date: 12/03/2019

#UI

#loading shiny library
library(shiny)

shinyUI(fluidPage(
  
  #fluid page for dynamically adapting to screens of different resolutions.
  titlePanel("Iris Dataset"),
  sidebarLayout(
    sidebarPanel(
      #implementing radio buttons
      radioButtons("p", "Select column of iris dataset:",
                   list("Sepal.Length"='a', "Sepal.Width"='b', "Petal.Length"='c', "Petal.Width"='d')),
      
      #slider input for bins of histogram
      sliderInput("bins",
                  "Number of bins:",
                  min = 1,
                  max = 50,
                  value = 30)
      
      # Show a plot of the generated distribution
    ),
    mainPanel(
      plotOutput("distPlot")
    )
  )
))