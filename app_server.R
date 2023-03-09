server <- function(input, output, session) {
  repoLink <- a("GitHub Link (Ctrl + Click to Open in New Tab)", href = "https://github.com/halljc76/STOR565FinalProj")
  output$repo <- renderUI({tagList("", repoLink)})
  
  ppLink <- a("Proposal Link (Ctrl + Click to Open in New Tab)", 
              href = "https://drive.google.com/file/d/19qLlPcrGPepbB-L8_G_wG7GBkmErAqMr/view?usp=share_link")
  output$projprop <- renderUI({tagList("", ppLink)})
  
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