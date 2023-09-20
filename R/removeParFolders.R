#' Remove Parallel Processing Folders from mplusParallel_automation
#'
#' This function is used to delete all parallel processing folders (with names
#' containing the word "session") that were created by the `mplusParallel_automation`
#' function.
#'
#' @param folder The user-defined folder to search for parallel processing folders.
#' Should be the same as the one used for mplusParallel_automation.
#'
#'
#' @return Invisible NULL. The function is called for its side effect of
#'   deleting folders.
#' @export
#' @examples
#' \donttest{
#' # Assuming you have parallel processing folders in your current RStudio
#' # document's directory
#' removeParFolders(folder = 'user_defined_path')
#'}
#' @seealso
#' \code{\link{mplusParallel_automation}} for the function that creates
#' these folders.




removeParFolders <- function(folder = ''){
  subdirs <- list.dirs(folder, full.names = TRUE, recursive = FALSE)
  for (subdir in subdirs) {
    if (grepl("session", basename(subdir))) {
      unlink(subdir, recursive = TRUE)
    }
  }}
