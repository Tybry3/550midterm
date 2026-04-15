here::i_am(
  "code/render_report.R"
)

# Calling configs
WHICH_CONFIG <- Sys.getenv("WHICH_CONFIG")
config_list <- config::get(
  config = WHICH_CONFIG
)

# Render the report
rmarkdown::render(
  here::here("report.Rmd"),
  output_file = "report.html"
)
