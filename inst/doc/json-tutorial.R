## ---- echo=FALSE, include=FALSE-----------------------------------------------
knitr::opts_chunk$set(eval = FALSE)

## ----eval = TRUE--------------------------------------------------------------
library(JBrowseR)

assembly(
  "https://jbrowse.org/genomes/sars-cov2/fasta/sars-cov2.fa.gz",
  bgzip = TRUE
)

## -----------------------------------------------------------------------------
#  library(shiny)
#  library(JBrowseR)
#  
#  ui <- fluidPage(
#    titlePanel("JSON JBrowseR Example"),
#    JBrowseROutput("browserOutput")
#  )
#  
#  server <- function(input, output, session) {
#    # using JBrowseR helper function to parse the config
#    config <- json_config("./config.json")
#  
#    output$browserOutput <- renderJBrowseR(
#      JBrowseR("JsonView",
#              config = config,
#              location = "NC_045512.2:1..2,000"
#      )
#    )
#  }
#  
#  shinyApp(ui, server)

