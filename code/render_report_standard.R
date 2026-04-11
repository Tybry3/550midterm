here::i_am(
  "code/render_report_standard.R"
)

rmarkdown::render(
  here::here("report.Rmd"), 
  params = list(arm = "Standard F75"),
  output_file = "report_standard.html"
)