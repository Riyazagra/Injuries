#library(shiny)
library(shinydashboard)
library(dplyr)
library(ggplot2)
library(plotly)

install.packages("rsconnect")
rsconnect::setAccountInfo(name='injuries', token='5454D89E17798FB41FD355448A59EA8E', secret='VDltFcBMzE3a2tsCeS7VZmv7Nbxv/0LitUjJX2FJ')

library(rsconnect)
rsconnect::deployApp('C:\\Users\\Ka Ri Sh Ma\\Desktop\\R Shiny\\New Project')

injuries=vroom::vroom("utils\\injuries.tsv.gz")
population=vroom::vroom("utils\\population.tsv")
products=vroom::vroom("utils\\products.tsv")
prod_codes=purrr::set_names(products$prod_code,products$title)
