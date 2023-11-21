#' Download one file from Wildfinder dataset
#'
#' @description 
#' This function downloads a single file from wildfinder dataset) 
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

## GitHub URL ----
dl_wwf_file <- function(filename,overwrite,path,gurl){

## Check if exists locally ----
if (file.exists(file.path(path, filename)) && !overwrite) {
  message("The filename already exists. Use 'overwrite = TRUE' to replace it")
} else {
  ## Create destination folder ----
  dir.create(path, showWarnings = FALSE, recursive = TRUE)
  
  ## Download file ----
  utils::download.file(url      = paste0(gurl, filename),
                       destfile = file.path(path, filename),
                       mode     = "wb")
}
invisible(NULL)
}

