#' Download Wildfinder dataset
#'
#' @description 
#' This function downloads the Wildfinder dataset (3 csv files) hosted on the 
#' GitHub repository <https://github.com/rdatatoolbox/datarepo/>. 
#' The files
#' won't be downloaded if already exists locally (except if `overwrite = TRUE`).
#' The files will be stored in 
#' `data/wildfinder/`. This folder will be created if required.
#' 
#' @param overwrite a `logical`. If `TRUE`, the file will be downloaded again 
#'   and the previous version will be replaced.
#'
#' @return No return value.
#' 
#' @export
#
dl_wildfinder_data <- function(overwrite = FALSE) {
  
## Destination ----  create folder pantheria under data 
path <- here::here("data", "wildfinder")
  
## Files' names ----
filename1 <- "wildfinder-mammals_list.csv"
filename2 <- "wildfinder-ecoregions_list.csv"
filename3 <- "wildfinder-ecoregions_species.csv"
  
## GitHub URL ----
giturl <- paste0("https://raw.githubusercontent.com/rdatatoolbox/datarepo/main/",
                "data/wildfinder/")

dl_wwf_file(filename1,overwrite,path,giturl)
dl_wwf_file(filename2,overwrite,path,giturl)
dl_wwf_file(filename3,overwrite,path,giturl)

invisible(NULL) 
}