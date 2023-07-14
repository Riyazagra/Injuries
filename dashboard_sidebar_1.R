dashboardSidebar(width = 300,
                 sidebarMenu(id="tabs"),
                 menuItem("VISUALIZATION",tabname="Tables",icon =icon("table"),
                          selectInput("code", "Injury Occured by", choices = prod_codes),
                          actionButton("act","Generate")))