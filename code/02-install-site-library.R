# Initial site library setup for new R version


# Useful CRAN packages ----------------------------------------------------

# tidyverse installs a bunch of packages (which should include rmarkdown)
install.packages("tidyverse", .Library, repos = mran_repo)

# DT is nice for interactive tables in html output
install.packages("DT", .Library, repos = mran_repo) 

# these seem to be needed for R Markdown
# install.packages(c("bitops", "caTools"), .Library, repos = mran_repo) 


# Southwick Packages ------------------------------------------------------

# Dan's Southwick workflow depends on these 2 packages

install.packages("pkg/salic_0.9.4.zip", .Library, repos = NULL, type = "win.binary")
install.packages("pkg/saproj_2.0.zip", .Library, repos = NULL, type = "win.binary")
# install.packages("E:/SA/Projects/R-Software/Southwick-packages/salic_0.9.9.1.zip",
#                  .Library, repos = NULL, type = "win.binary")


### Additional CRAN packages
# many users won't need these, so might be best to install project-specific

# development packages
# note: might also need other packages/functionality for building packages (saproj, salic)
# install.packages("devtools", .Library, repos = mran_repo)

# census API packages
# install.packages("acs", .Library, repos = mran_repo)
# install.packages("tidycensus", .Library, repos = mran_repo) # pulls in some spatial analysis packages
