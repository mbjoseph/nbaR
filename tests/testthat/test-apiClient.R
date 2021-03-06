library("nbaR")
library("testthat")

wd <- getwd()
if (grepl("testthat", wd)) {
  data_dir <- file.path("data")
} else {
  ## for running test at package level
  data_dir <- file.path("tests", "testthat", "data")
}

test_that("Constructor works", {
  ## constructor with default base path
  ac <- ApiClient$new()
  ## test with other basePath
  ac <- ApiClient$new(basePath = "http://localhost:8080/v2")
  ## test with other userAgent
  ac <- ApiClient$new(userAgent = "test/0.0")
})

test_that("CallApi function works", {
  ac <- ApiClient$new()
  res <- ac$callApi(
    "http://api.biodiversitydata.nl/v2", "GET",
    headerParams = NULL, queryParams = NULL, body = NULL
  )
  expect_true(res$status_code == 200)
})

test_that("non-GET requests", {
  ac <- ApiClient$new()

  ## Formulate Query and tranform to list as POST body
  qc <- QueryCondition$new(
    field = "defaultClassification.genus",
    operator = "EQUALS", value = "Sempervivum"
  )
  qs <- QuerySpec$new(conditions = list(qc))
  body <- qs$toList()
  res <- ac$callApi("http://api.biodiversitydata.nl/v2/taxon/query",
    "POST",
    headerParams = NULL,
    queryParams = NULL,
    body = body
  )
  expect_true(res$status_code == 200)

  ## test non-allowed http method
  expect_error(ac$callApi("http://api.biodiversitydata.nl/v2",
    method = "PUT", headerParams = NULL
  ))
})

test_that("HandleError function works", {
  ac <- ApiClient$new()
  ## make call that produces error
  res <- ac$callApi(
    "http://api.biodiversitydata.nl/v2/unknownendpoint", "GET",
    headerParams = NULL, queryParams = NULL, body = NULL
  )
  expect_warning(ac$handleError(res))
})
