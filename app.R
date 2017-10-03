#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(boxgooglemap)
library(httr)
source("helpers.R")

ui <- fluidPage(
  titlePanel("Google address convert"),
  sidebarLayout(
   sidebarPanel( helpText("Simple convertions of geodata from adresses/zip to coordinates"),

    textInput("var", label = "Address or coordinates input")),

  mainPanel(tableOutput("map"))
  )
)


server <- function(input, output) {

  output$map <- renderTable({
    convert(input$var)
  })
}

# Run the application
shinyApp(ui = ui, server = server)

