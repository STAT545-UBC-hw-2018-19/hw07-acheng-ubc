#' Perform a Box-Cox transformation
#'
#' @param x Vector of data points
#' @param lambda Lambda value to be inputted manually
#' @param plot_it Logical to be passed to pow (really just a work-around for a strange error when checking in Rstudio
#' 
#' @return Vector of transformed data points
#' @export
#'
#' @examples
#' bc_transform(tenvec, 0)
#' bc_transform(-5:5, 1)
#' bc_transform(skewvec)
#' 
bc_transform <- function(x, lambda=0, plot_it=FALSE){
  # check if x is numeric
  if(any(!is.numeric(x))){
    stop("Box-Cox transformation requires a vector of numbers as an input")
  }
  
  # if any value in x is negative, add delta = |min| + 10% to assure all values are positive
  if(any(x <= 0)){
    delta = abs(min(x)) + 0.1 * abs(min(x))
    x <- x + delta
  }
  
  # exception for lambda = 0
  if(lambda == 0){
    res <- log(x) # natural logarithm
    return(res)
  }
  
  # perform transformation
  res <- (pow(x, lambda, plot_it) - 1)/lambda
  return(res)
}


