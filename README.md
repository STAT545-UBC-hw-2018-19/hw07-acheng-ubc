# STAT547M

## Assignment 7 Repository

This assignment focuses on expanding the `powers` package built by @vincenzocoia. I expanded this by creating an exported function `bc_transform()` that relies on the internal `pow()` function to perform a type of Power transform ([Box-Cox transformation](https://ncss-wpengine.netdna-ssl.com/wp-content/themes/ncss/pdf/Procedures/NCSS/Box-Cox_Transformation_for_Simple_Linear_Regression.pdf)) on a given data vector.

Documentation can be found in powers/man/boxcox.Rd

Unit tests can by found in powers/tests/testthat/test_boxcox.R

The vignette has been updated to show usage of the bc_transform() function.


### What's interesting here?
| File | Description |
|------|-------------|
| README.md | Quick description of the repository |
| powers/ | Modified powers package (see below for installation instructions) |

### Installation Instructions
You can install this edited powers package either by:

1. Cloning or downloading the repository into your RStudio and building the package, or
1. With the `install_github()` function from the `devtools` library
    ```
    devtools::install_github("STAT545-UBC-students/hw07-acheng-ubc/powers", build_vignettes = TRUE)
    ```

More details can be found in the README in the /powers/ directory!
