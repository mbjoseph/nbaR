library(nbaR)
library(testthat)

wd <- getwd()
if(grepl('testthat', wd)) {
    dataDir <- file.path('data')
} else {
    ## for running test at package level
    dataDir <- file.path('tests', 'testthat', 'data')
}

sc <- SpecimenClient$new(basePath="http://api.biodiversitydata.nl/v2")
qc <- QueryCondition$new(field="unitID", operator="EQUALS", value="L.4304195")
qs <- QuerySpec$new(conditions=list(qc))


test_that("Class hierarchy correct", {
    expect_is(sc, "SpecimenClient")
    expect_is(sc, "ApiClient")
})

test_that("Query with SpecimenClient returns specimens", {
    res <- sc$query()

    ## Default number of returned documents is 10
    expect_length(res$content$resultSet, 10)

    for (hit in res$content$resultSet) {
        expect_is(hit$item, "Specimen")
    }
})

test_that("Query with QuerySpec works", {
    res <- sc$query(query_spec=qs)
    expect_is(res$content$resultSet[[1]]$item, "Specimen")
})


test_that("Operators other than EQUALS work", {
    qc <- QueryCondition$new(field="identifications.defaultClassification.genus", operator="STARTS_WITH", value="Hydro")
    qs <- QuerySpec$new(conditions=list(qc))
    res <- sc$query(qs)

    for (hit in res$content$resultSet) {
        expect_is(hit$item, "Specimen")
    }
})

q1 <- QueryCondition$new(field = "sex", operator="EQUALS", value="female")
q2 <- QueryCondition$new(field = "identifications.defaultClassification.family", operator="EQUALS", value="Equidae")
q3 <- QueryCondition$new(field = "identifications.taxonRank", operator="EQUALS", value="species")
q4 <- QueryCondition$new(field = "identifications.taxonRank", operator="EQUALS", value="subspecies")
q3_4 <- QueryCondition$new(or=list(q3, q4))

qs <- QuerySpec$new(conditions=list(q1, q2, q3_4))

## q1 AND q2 AND (q3 OR q4)

#q1 <- QueryCondition$new("field" = "gatheringEvent.country", "operator" = "EQUALS_IC", "value" = "Nederland", "boost"= 2.0)
#q2 <- QueryCondition$new("field" = "gatheringEvent.country", "operator" = "EQUALS_IC", "value" = "Netherlands", "boost"= 0.5)
#q3 <- QueryCondition$new("field" = "gatheringEvent.country", "operator" = "EQUALS_IC", "value" = "Netherlands, The", "boost": 1)
#q4 <- QueryCondition$new("field" = "kindOfUnit", "operator" = "EQUALS_IC", "value" = "EGG")
#q5 <- QueryCondition$new("field" = "identifications.taxonRank", "operator" = "EQUALS_IC", "value" = "species")



#test_that("POST requests work", {
#    res <- sc$query_http_get2(method="POST")
#    expect_length(res$content$resultSet, 10)
#
#    ## test with querySpec
#    res <- sc$query_http_get2(qs, method="POST")
#    expect_is(res$content$resultSet[[1]]$item, "Specimen")
#})
