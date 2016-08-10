# server.R

# I am going to create a Shiny app that uses the Inside Sales Training Data Set to show the 
library(shiny)
library(maps)
library(mapproj)
library(rworldmap)
library(rworldxtra)

source("help.R")

setwd("~/1QuantMark/Shiny/ShinyQM/myApp")
scoredat <- read.csv("data/contactscoredata.csv")
names(scoredat) <- c("City","ContactScore","Latitude","Longitude") 


shinyServer(function(input,output){
  
  output$map <- renderPlot(
    pointsmap(scoredat,input$range[1],input$range[2])
  )
  
})

