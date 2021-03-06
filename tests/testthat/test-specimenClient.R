library("nbaR")
library("testthat")

wd <- getwd()
if (grepl("testthat", wd)) {
  data_dir <- file.path("data")
} else {
  ## for running test at package level
  data_dir <- file.path("tests", "testthat", "data")
}

sc <- SpecimenClient$new(basePath = "http://api.biodiversitydata.nl/v2")

test_that("Class hierarchy correct", {
  expect_is(sc, "SpecimenClient")
  expect_is(sc, "ApiClient")
})
