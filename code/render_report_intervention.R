here::i_am(
  "code/render_report_intervention.R"
)

rmarkdown::render(
  here::here("report.Rmd"), 
  params = list(arm = "Modified F75 (intervention)"),
  output_file = "report_intervention.html"
)