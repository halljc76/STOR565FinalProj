server <- function(input, output, session) {
  repoLink <- a("GitHub Link", href = "https://github.com/halljc76/STOR565FinalProj")
  output$repo <- renderUI({tagList("", repoLink)})
  
  reports <- read.csv("www/reports.csv", stringsAsFactors = FALSE)
  
  # Decode the link column
  reports$Link <- createLink(reports$Link)
  
  # Output the data table
  output$biweek <- renderDataTable({
    datatable(reports, options = list(pageLength = 10),
              escape = F, style = "bootstrap")
  })
  
}

shinyApp(ui = ui, server = server) 