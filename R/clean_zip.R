#' Change zip codes with letters to NA values, and change those 3/4 digit zip codes to 5 digit form with prefix of "0"
#'
#'
#'@param x A character
#'@return A character
#'@export

library(stringr)
clean_zip <- function(x){
  x <- ifelse(contain_letter(x), "NA",
              ifelse(stringr::str_detect(x, ", "), stringr::str_replace(x, ", ", "00"),
                  ifelse(stringr::str_detect(x, "  "), stringr::str_replace(x, "  ", "00"),
                     ifelse(stringr::str_detect(x, " "), stringr::str_replace(x," ", "0"), stringr::str_pad(x, width = 5, pad = "0"))
                     )
                )
      )
  return(x)
}
