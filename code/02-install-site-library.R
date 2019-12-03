# Initial site library setup for new R version


# Useful CRAN packages ----------------------------------------------------

# tidyverse installs a bunch of packages (which should include rmarkdown)
install.packages("tidyverse", .Library)

# DT is nice for interactive tables in html output
install.packages("DT", .Library) 

# these seem to be needed for R Markdown
install.packages(c("bitops", "caTools"), .Library) 

# for using odbc database connections
install.packages("odbc", .Library) 


# Southwick Packages ------------------------------------------------------

# Dan's Southwick workflow depends on these 2 packages

install.packages("pkg/salic_1.0.zip", .Library, repos = NULL, type = "win.binary")
install.packages("pkg/saproj_2.0.zip", .Library, repos = NULL, type = "win.binary")
