context("Piecewise domains of a box-cox transformation")

test_that("Positive values work.", {
  num_vec <- c(1:10)
  expect_identical(bc_transform(num_vec), log(num_vec))
  expect_identical(bc_transform(num_vec, 2), (num_vec^2 - 1)/2)
  expect_identical(bc_transform(num_vec, -2), (num_vec^(-2) - 1)/(-2))
})

test_that("Vectors with negative values and zero work.", {
  neg_vec <- c(-5:5)
  delta_neg_vec <- neg_vec + abs(min(neg_vec)) + 0.1 * abs(min(neg_vec))
  expect_equal(bc_transform(neg_vec), log(delta_neg_vec))
  expect_equal(bc_transform(neg_vec, 2), (delta_neg_vec^2 - 1)/2)
  expect_equal(bc_transform(neg_vec, -2), (delta_neg_vec^(-2) - 1)/(-2))
})

test_that("Non-numeric vectors output a specified error message", {
  str_vec <- c("Hello", "Happy", "World")
  expect_error(bc_transform(str_vec), "Box-Cox transformation requires a vector of numbers as an input")
  expect_error(bc_transform(str_vec, -2), "Box-Cox transformation requires a vector of numbers as an input")
  expect_error(bc_transform(str_vec, 2), "Box-Cox transformation requires a vector of numbers as an input")
  
  
})