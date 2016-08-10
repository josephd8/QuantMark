# ui.R
library(shiny)

shinyUI(fluidPage(
  titlePanel("Dial Count by City"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("range","Count Range",
                  min=0,max=200,value=c(10,30))
    ),
    mainPanel(
      plotOutput("map")
    )
  )
  
))

