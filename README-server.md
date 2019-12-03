# Southwick R Setup for Data Server

Instructions for preparing new R version on the Data Server.

1. Install the new R version, using these non-default settings:
   + Use 'E:\Program Files\R\R-x.x.x'
   + Uncheck 'Create a desktop shortcut'
   
3. Install RStudio if needed (it will probably already be installed)

4. Open R-Setup.Rproj and edit “1-run-southwick-setup.R”, modifying as needed for new version:
   + Note that only 2 parameters should need to be changed (r_version, mran_repo). 
     The MRAN repo (https://mran.microsoft.com/timemachine) fixes a snapshot to offer 
     consistent package versions. You should pick a date that uses the corresponding 
     R version (probably the most recent date available for that version is a good way to go). 

5. Source "1-run-southwick-setup.R"

6. Source "2-summarize-setup.Rmd"

7. Restart RStudio > You should see an updated startup message
