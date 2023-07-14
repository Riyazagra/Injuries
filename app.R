source("global.R")

ui =dashboardPage(skin=c("green"),
                  
  dashboardHeader(title = "Accident analysis"),
  
source("ui/dashboard_sidebar_1.R",local=TRUE)$value,

source("ui/dashboard_body_1.R",local=TRUE)$value
    )

server =function(input, output, session){

source("utils/action_button_event_reactive.R",local = TRUE)$value
  
source("server/Render_tables.R",local = TRUE)$value
 
source("utils/reactive_ploting.R",local = TRUE)$value
  
source("server/Render_ggplot.R",local = TRUE)$value


  
}

shinyApp(ui, server)
