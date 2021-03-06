library("nbaR")
library("testthat")

set.seed(111)

context("Testing class Agent")

# Make a list with random arguments for all fields in the class
args <- list()
args[["agentText"]] <- paste(sample(
  c(LETTERS, letters),
  sample(1:20, 1)
), collapse = "")

# make Agent object without and with args
objEmpty <- Agent$new()
objRand <- do.call(Agent$new, args)

test_that("Constructor works", {
  expect_is(objEmpty, "Agent")
  expect_is(objRand, "Agent")
})

test_that("toList works", {
  expect_is(objEmpty$toList(), "list")
  expect_is(objRand$toList(), "list")
})

test_that("fromList works", {
  obj <- Agent$new()
  obj$fromList(objRand$toList())
  # expect_equal(obj, objRand)
  expect_is(obj, "Agent")
})

test_that("toJSONString works", {
  expect_is(objEmpty$toJSONString(), "json")
  expect_true(objEmpty$toJSONString() != "")
  expect_is(objRand$toJSONString(), "json")
  expect_true(objRand$toJSONString() != "")
})

test_that("fromJSONString works", {
  obj <- Agent$new()
  obj$fromJSONString(objRand$toJSONString())
  # expect_equal(obj, objRand)
  expect_is(obj, "Agent")
})
