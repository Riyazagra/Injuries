dashboardBody(
  tabItem(
    tabName = "TABLES",
    tabsetPanel(
      tabPanel("TABLES",
               box(title="Diagnosed",solidHeader = TRUE,column(4, tableOutput("diag"))),
               box(title="Body Part",solidHeader = TRUE,column(4, tableOutput("body_part"))),
               box(title="Location",solidHeader = TRUE,column(4,tableOutput("location")))
      ),
      tabPanel("PLOTS",
               fluidRow(
                 column(4,selectInput("y","Y-axis",c("count","rate")))),
               box(title="Plot",width=10,column(6, plotOutput("age_sex"))),
          )
    )))