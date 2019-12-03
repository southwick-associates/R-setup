# Southwick R Setup for Data Server

Instructions for preparing new R version on the Data Server, which also sets up the installation zip file for installing on laptops and other SA computers.

1. Create a new folder: just copy previous version and rename to match current

2. Download the latest version of R: https://cran.r-project.org/ and place it at the top level in the new folder

3. Install R version, using these non-default settings:
   + Use 'E:\Program Files\R\R-x.x.x'
   + Uncheck 'Create a desktop shortcut'
   
4. Install RStudio if needed (it will probably already be installed)

5. Open R-Setup.Rproj and edit “1-run-southwick-setup.R”, modifying as needed for new version:
   + Note that only 2 parameters should need to be changed (r_version, mran_repo). 
     The MRAN repo (https://mran.microsoft.com/timemachine) fixes a snapshot to offer 
     consistent package versions. You should pick a date that uses the corresponding 
     R version (probably the most recent date available for that version is a good way to go). 

6. Source "1-run-southwick-setup.R"

7. Source "2-summarize-setup.Rmd"

8. Restart RStudio > You should see an updated startup message

9. Zip this R version folder and place on Office 365: R Software > Documents > Installations