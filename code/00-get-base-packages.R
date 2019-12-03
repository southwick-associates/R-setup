# save base-installed packages to csv to document how packages were installed

pkg <- data.frame(installed.packages())[c("Package","Version")]
pkg$install_source <- "R-install"

write.csv(pkg, file = "pkg/installed-base-pkgs.csv", row.names = FALSE)
