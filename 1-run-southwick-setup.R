# A number of packages will be downloaded and installed
# select OK (or yes) if prompted to install additional packages

# version-specific parameters
r_version <- "3.4.3"
mran_repo <- "https://cran.microsoft.com/snapshot/2017-12-18"

# run setup
source("code/00-get-base-packages.R")
source("code/01-edit-site-Renviron-Rprofile.R") # southwick R settings
source("code/02-install-site-library.R")        # default packages
