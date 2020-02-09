
# uszipcodes

<!-- badges: start -->

<!-- badges: end -->

The goal of ZipcodeUS is to provide data and tools for those looking for
plot their address data.  
Attached functions could be used to clean zip codes before joinining
with Zip table to obtain longtitudes/latitudes.

## Example

``` r
library(uszipcodes)
#> Loading required package: stringr
y <- c("1234 100th Street, New York, NY, 10001", "5678 100th Street, New York, NY, 23")
get_zip(y)
#> [1] "10001" "Y, 23"
contain_letter(get_zip(y))
#> 10001 Y, 23 
#> FALSE  TRUE
```

``` r
x <- c("1234", "Li123"," 1234", "  123")
clean_zip(x)
#>    1234   Li123    1234     123 
#> "01234"      NA "01234" "00123"
```

## Zip table

``` r
head(zip_table)
#>     Zip      City State Latitude Longitude Timezone Daylight.savings.time.flag
#> 1 71937      Cove    AR 34.39848 -94.39398       -6                          1
#> 2 72044  Edgemont    AR 35.62435 -92.16056       -6                          1
#> 3 56171  Sherburn    MN 43.66085 -94.74357       -6                          1
#> 4 49430    Lamont    MI 43.01034 -85.89754       -5                          1
#> 5 52585  Richland    IA 41.19413 -91.98027       -6                          1
#> 6 47520 Cannelton    IN 37.93431 -86.67821       -5                          0
#>              geopoint
#> 1 34.398483,-94.39398
#> 2 35.624351,-92.16056
#> 3 43.660847,-94.74357
#> 4 43.010337,-85.89754
#> 5 41.194129,-91.98027
#> 6 37.934311,-86.67821
```

## Installation

``` r
library(devtools)
install_github("li-wen-li/uszipcodes")
```
