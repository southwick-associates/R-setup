# Create site files to define Southwick installation

# version-specific parameters
r_version <- "3.5.1"
mran_repo <- "https://cran.microsoft.com/snapshot/2018-08-07"

# run setup
source("code/00-get-base-packages.R")
source("code/01-edit-site-Renviron-Rprofile.R") # southwick R settings
