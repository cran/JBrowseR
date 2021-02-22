## ---- echo=FALSE, include=FALSE-----------------------------------------------
knitr::opts_chunk$set(eval = FALSE)

## -----------------------------------------------------------------------------
#  library(shiny)
#  library(JBrowseR)
#  
#  ui <- fluidPage()
#  
#  server <- function(input, output, session) {}
#  
#  shinyApp(ui, server)

## -----------------------------------------------------------------------------
#  ui <- fluidPage(
#    titlePanel("Sars-CoV-2 JBrowseR Example"),
#    # this adds to the browser to the UI, and specifies the output ID in the server
#    JBrowseROutput("browserOutput")
#  )
#  
#  server <- function(input, output, session) {
#    # create the necessary JB2 assembly configuration
#    assembly <- assembly(
#      "https://jbrowse.org/genomes/sars-cov2/fasta/sars-cov2.fa.gz",
#      bgzip = TRUE
#    )
#  
#    # link the UI with the browser widget
#    output$browserOutput <- renderJBrowseR(
#      JBrowseR(
#        "View",
#        assembly = assembly
#      )
#    )
#  }
#  
#  shinyApp(ui, server)

## -----------------------------------------------------------------------------
#  server <- function(input, output, session) {
#    # create the necessary JB2 assembly configuration
#    assembly <- assembly(
#      "https://jbrowse.org/genomes/sars-cov2/fasta/sars-cov2.fa.gz",
#      bgzip = TRUE
#    )
#  
#    # create configuration for a JB2 GFF FeatureTrack
#    annotations_track <- track_feature(
#      "https://jbrowse.org/genomes/sars-cov2/sars-cov2-annotations.sorted.gff.gz",
#      assembly
#    )
#  
#    # create the tracks array to pass to browser
#    tracks <- tracks(annotations_track)
#  
#    # link the UI with the browser widget
#    output$browserOutput <- renderJBrowseR(
#      JBrowseR(
#        "View",
#        assembly = assembly,
#        # pass our tracks here
#        tracks = tracks
#      )
#    )
#  }

## -----------------------------------------------------------------------------
#  tracks <- tracks(
#    annotations,
#    variants,
#    alignments
#  )

## -----------------------------------------------------------------------------
#  # set up the default session for the browser
#  default_session <- default_session(
#    assembly,
#    c(annotations_track)
#  )

## -----------------------------------------------------------------------------
#  output$browserOutput <- renderJBrowseR(
#      JBrowseR(
#        "View",
#        assembly = assembly,
#        tracks = tracks,
#        location = "NC_045512.2:1..100",
#        defaultSession = default_session
#      )
#  )

## -----------------------------------------------------------------------------
#  # accepts up to four colors for creating a custom palette
#  theme <- theme("#5da8a3", "#333")

## -----------------------------------------------------------------------------
#  output$browserOutput <- renderJBrowseR(
#      JBrowseR(
#        "View",
#        assembly = assembly,
#        tracks = tracks,
#        location = "NC_045512.2:1..100",
#        defaultSession = default_session,
#        theme = theme
#      )
#  )

## -----------------------------------------------------------------------------
#  ui <- fluidPage(
#    titlePanel("Sars-CoV-2 JBrowseR Example"),
#    # this adds to the browser to the UI, and specifies the output ID in the server
#    JBrowseROutput("browserOutput")
#  )
#  
#  server <- function(input, output, session) {
#    # create the necessary JB2 assembly configuration
#    assembly <- assembly(
#      "https://jbrowse.org/genomes/sars-cov2/fasta/sars-cov2.fa.gz",
#      bgzip = TRUE
#    )
#  
#    # create configuration for a JB2 GFF FeatureTrack
#    annotations_track <- track_feature(
#      "https://jbrowse.org/genomes/sars-cov2/sars-cov2-annotations.sorted.gff.gz",
#      assembly
#    )
#  
#    # create the tracks array to pass to browser
#    tracks <- tracks(
#      annotations_track
#    )
#  
#    # set up the default session for the browser
#    default_session <- default_session(
#      assembly,
#      c(annotations_track)
#    )
#  
#    theme <- theme("#5da8a3", "#333")
#  
#    # link the UI with the browser widget
#    output$browserOutput <- renderJBrowseR(
#      JBrowseR(
#        "View",
#        assembly = assembly,
#        tracks = tracks,
#        location = "NC_045512.2:1..100",
#        defaultSession = default_session,
#        theme = theme
#      )
#    )
#  }
#  
#  shinyApp(ui, server)

