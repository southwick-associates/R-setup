# Southwick R-Setup

Includes code to install R with a number of settings that work with [package saproj](https://github.com/southwick-associates/saproj) to enable better reproducibility over time and across machines.

## Installation

This outlines the steps needed to install the selected Southwick R version onto a Windows machine. The process should take less than five minutes.

1. Install R [corresponding to selected version](https://cran.r-project.org/bin/windows/base/old/). Note that you'll need to change the default folder to "C:/" instead of "C:/Program Files" to avoid write access issues in the steps below.

2. [Install Rstudio](https://rstudio.com/products/rstudio/download/) (free version) if not already installed on your machine.

3. Run Southwick-specific Setup:
    + From this github repository, click on "release", select the number corresponding to the R version, click on the zip file, and then unzip the downloaded file on your machine.
    + Double-click "R-Setup.Rproj" in the unzipped folder to launch RStudio
    + Run "1-make-site-files.R"
    + Restart Rstudio. You should now see a Southwick-specific message appear in the R console.
    + Run "2-install-site-packages.R", which will likely take a few minute
    + Open "3-summarize-setup.Rmd" and Knit > Knit to HTML from Rstudio. Note: Select "Yes" if prompted to install additional packages.
    
If the Rmd runs correctly, then you are done. You can take a look at the output html summary if you are interested in the details.
