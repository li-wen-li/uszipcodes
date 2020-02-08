#' Extract zip codes from street adddress, for example "111 E Summit St, Kent, OH, 44240"
#'
#'@param x A character
#'@return A character
#'@export


get_zip <- function(x) {
  a <- stringr::str_sub(x, -5, -1)
  return(a)
}
