output$diag = renderTable({
  selected() %>% count(diag, wt = weight, sort = TRUE)
})

output$body_part =renderTable({
  selected() %>% count(body_part, wt = weight, sort = TRUE)
})
output$location = renderTable({
  selected() %>% count(location, wt = weight, sort = TRUE)
})