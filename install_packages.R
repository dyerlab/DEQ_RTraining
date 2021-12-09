# This script will look at the packages you have installed on your current 
#   machine and the ones needed for this course and install the missing ones.


rm( list=ls())

# Packages used in activities.


needed <- c("tidyverse", "reshape2","knitr","rmarkdown","sf","units","RColorBrewer","maps", "mapproj","lubridate", "leaflet","knitr","kableExtra")
cat("The following packages are needed: ", paste( needed, collapse=", "), "\n" )

# Currently installed packages
curr_packages <- installed.packages()
curr_packages <- names( is.na(curr_packages[,4]))

# Things needed to install 
to_install <- setdiff( needed, curr_packages) 
if( length( to_install) ) { 
  cat("After checking what you already have installed, these will be installed: ", 
      paste(to_install, collapse=", "), "\n" )
  cat("Installing\n")
  install.packages( to_install, 
                    ask=FALSE,
                    verbose = TRUE )
  
} else { 
  cat("There are no packages needed, you already have everything.\n")    
}

