here::i_am("code/00_clean_data.R")

# Calling config defined in terminal

WHICH_CONFIG <- Sys.getenv("WHICH_CONFIG")
config_list <- config::get(
  config = WHICH_CONFIG
)

# Loads initial dataset from the data/ folder
datapath <- here::here("data/f75_interim.csv")
data <- read.csv(datapath, header = TRUE)

# Filters data by arm status based on config (set in terminal)
cleandata <- data[data$arm == config_list$arm, ]

# Saves filtered dataset as an .rds object for calling in individual .R scripts
saveRDS(
  cleandata,
  file = here::here("data/cleandata.rds")
)
