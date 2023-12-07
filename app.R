library(shiny)
library(shinyjs)
Sys.setlocale(category = "LC_ALL", locale = "ru_RU.UTF-8")
options(shiny.maxRequestSize=100*1024^2)
source("mc_ui.R", encoding = "UTF-8")
source("global.R", encoding = "UTF-8")
source("main_ui.R", encoding = "UTF-8")
source("Example.R", encoding = "UTF-8")


# Define UI for application that draws a histogram
ui <- tagList(
    useShinyjs(),
    navbarPage("MapClust",
               tabPanel("Введение", fluidPage(htmlOutput("intro"))),
               Example.UI(example.id),
               MonteCarlo.UI(monte.carlo.id),
               Main.UI(main.id)
    )
)

server <- function(input, output) {
}

shinyApp(ui = ui, server = server)
