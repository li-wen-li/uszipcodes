#' Extract zip codes from street adddress, for example "111 E Summit St, Kent, OH, 44240"
#'
#'@param x A character
#'@return A character
#'@export


get_zip <- function(x) {
  a <- stringr::str_sub(x, -5, -1)
  return(a)
}

#' check if your zip code data includes letters due to data entry error.
#'
#'
#'@param x A character value to be checked if contain letters
#'@return True/False
#'@export

contain_letter <- function(x) {sapply(x, function(y){
  y <- as.integer(charToRaw(y)) # convert character to integer
  any((65 <= y & y <= 90) | (97 <= y & y <= 122)) #ascii codes for upper and lower case
})
}

#' Change zip codes with letters to NA values, and change those 3/4 digit zip codes to 5 digit form with prefix of "0"
#'
#'
#'@param x A character
#'@return A character
#'@export

clean_zip <- function(x){
  x <- ifelse(contain_letter(x), NA,
              ifelse(stringr::str_detect(x, ", "), stringr::str_replace(x, ", ", "00"),
                  ifelse(stringr::str_detect(x, "  "), stringr::str_replace(x, "  ", "00"),
                     ifelse(stringr::str_detect(x, " "), stringr::str_replace(x," ", "0"), stringr::str_pad(x, width = 5, pad = "0"))
                     )
                )
      )
  return(x)
}
