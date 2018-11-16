
<!-- README.md is generated from README.Rmd. Please edit that file -->
[![Build Status](https://travis-ci.org/vincenzocoia/powers.svg?branch=master)](https://travis-ci.org/vincenzocoia/powers)

**Note**: This R package is not mean to be "serious". It's just for teaching purposes. The package now also contains a function to perform a box-cox transformation.

powers
======

This is an R package that gives `sqrt()` friends by providing other power functions.

Installation
------------

You can install powers from github with:

``` r
# install.packages("devtools")
devtools::install_github("STAT545-UBC-students/hw07-acheng-ubc/powers", build_vignettes = TRUE)
```

Example
-------

See the vignette for more extensive use, but here's are two examples:

``` r
powers::reciprocal(2)
#> [1] 0.5
```

``` r
powers::bc_transform(powers::skewvec)
#>  [1]  0.4700036  0.9555114 -0.5108256  1.5260563  1.8870696  2.0281482
#>  [7]  2.1747517  2.0918641  2.0281482  2.1517622  2.0281482  2.3608540
#> [13]  2.1517622  2.1517622  2.0281482  1.8870696  1.8870696  1.8870696
#> [19]  2.0412203  2.2823824  2.3608540  2.2617631  2.1517622  2.8033604
#> [25]  2.8449094  3.1570004  3.3178158  3.3877744  3.5145261  3.8199077
```

For Developers
--------------

(Again, I don't actually intend for anyone to develop this silly package, but if I did, here's what I'd write.)

Use the internal `pow` function as the machinery for the front-end functions such as `square`, `cube`, and `reciprocal`.
