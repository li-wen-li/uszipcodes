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
