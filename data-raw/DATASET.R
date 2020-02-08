## code to prepare `DATASET` dataset goes here

zip_table <- read.csv("~/Downloads/us-zip-code-latitude-and-longitude.csv", sep = ";")

usethis::use_data(zip_table)
