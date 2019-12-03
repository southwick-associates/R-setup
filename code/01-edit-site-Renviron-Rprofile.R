# Initial site environment setup for new R version


# Prepare -----------------------------------------------------------------

# stop (with error) if the user isn't using the specified R version
r_current_version <-paste(R.version$major, R.version$minor, sep = ".")
if (r_version != r_current_version) {
    stop(paste("You need to use R Version", r_version, 
               "(Tools > Global Options > R Version)"), call. = FALSE)
}


# Update Renviron.site ----------------------------------------------------

# The 'Renviron.site' performs 2 functions on startup:
# - specifies a user library, protecting the System Library from accidental installations
# - defines other useful environmental variables (e.g., Census API key)

# make an Renviron.site file if it doesn't exist
renviron_path <- file.path(R.home(component = "etc"), "Renviron.site")
if (!file.exists(renviron_path)) file.create(renviron_path)

# modify Renviron.site to reflect new R version
user_renviron_path <- file.path("${R_USER}", "R", "win-library", r_version)
template <- "code/template-files/Renviron.site"
x <- readLines(template)
x[3] <- paste0("R_LIBS_USER ='", user_renviron_path, "'")
writeLines(x, template)

# write to Renviron.site for new R version
# using append in case the R installation specified any environmental variables (e.g., RTools path)
file.append(renviron_path, template)


# Update Rprofile.site ----------------------------------------------------

# The 'Rprofile.site' performs 3 functions on startup:
# - sets the default CRAN repo, to ensure package installs come from the same MRAN snapshot
# - create a user library if it doesn't exist, to ensure System Library is protected for installs
# - prints a startup message, to inform the user of the Southwick-specific R installation

# modify Rprofile.site to reflect new R version
template <- "code/template-files/Rprofile.site"
x <- readLines(template)
x[6] <- paste0("mran_repo <- '", mran_repo, "'")
x[7] <- paste0("r_version <- '", r_version, "'")
writeLines(x, template)

# write to Rprofile.site for new R version
rprofile_path <- file.path(R.home(component = "etc"), "Rprofile.site")
file.copy(template, rprofile_path, overwrite = TRUE)

# make an Rprofile.site file if it doesn't exist
if (!file.exists(rprofile_path)) file.create(rprofile_path)
