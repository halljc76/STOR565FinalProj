ui <- fluidPage(
  theme = shinytheme("superhero"),
  navbarPage(
    title = "Final Project",
    tabPanel(
      "Intro",
      fluidRow(
        h1("Welcome to our project!"),
        hr(),
        h4("This website houses our machine learning project necessary to complete STOR565: Introduction to Machine Learning. \
            The accompanying tabs and interactive features will introduce to you the topic of [put the topic here], offer \
            insight into how we chose to model the scenario(s), and (potentially) allow the user to alter parameters 
            of model(s) to observe changes in performance.")
      ),
      
      fluidRow(
        h2("About Us"),
        hr(),
        h3("[Include some stuff here if we want to.]")
      ),
      
      fluidRow(
        h3("Accompanying Code"),
        hr(),
        h4(uiOutput("repo"))
      )
    ),
    tabPanel(
      "Biweekly Reports",
      hr(),
      
      dataTableOutput("biweek")
    ),
    tabPanel(
      "Modeling",
      fluidRow("Best project ever")
    )
  )
) 