server <- function(input, output, session) {
  repoLink <- a("GitHub Link", href = "https://google.com")
  output$repo <- renderUI({tagList("", repoLink)})
}

shinyApp(ui = ui, server = server) 