library(shinythemes)
library(shiny) 
library(rsconnect)
library(DT)


createLink <- function(val) {
  sprintf(paste0('<a href="', URLdecode(val),'" target="_blank">', "Click Here for Link! (Opens in New Window)" ,'</a>'))
}