# Netherlands Biodiversity API
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' Crs Class
#'
#'
#'
#' @field type  character
#' @field properties  list
#'
#' @section Methods:
#' \describe{
#'
#' \item{\code{$new()}}{
#'
#'   Constructor Crs object.
#'
#' }
#' \item{\code{$fromList(CrsList)}}{
#'
#'   Create Crs object from list.
#'
#' }
#'
#' \item{\code{$toList()}}{
#'
#'   Get list representation of Crs.
#'
#' }
#' \item{\code{fromJSONString(CrsJson)}}{
#'
#'   Create Crs object from list.
#'
#' }
#' \item{\code{toJSONString(pretty=TRUE)}}{
#'
#'   Get JSON representation of Crs.
#'
#' }
#' }
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Crs <- R6::R6Class(
  "Crs",
  public = list(
    `type` = NULL,
    `properties` = NULL,
    initialize = function(
                              `type`,
                              `properties`) {
      if (!missing(`type`)) {
        stopifnot(
          is.character(`type`),
          length(`type`) == 1
        )
        self[["type"]] <- `type`
      }
      if (!missing(`properties`)) {
        self[["properties"]] <- `properties`
      }
    },
    toList = function() {
      CrsList <- list()
      if (!is.null(self[["type"]])) {
        CrsList[["type"]] <-
          self[["type"]]
      }
      if (!is.null(self[["properties"]])) {
        CrsList[["properties"]] <-
          self[["properties"]]
      }
      ## omit empty nested lists in returned list
      CrsList[vapply(
        CrsList,
        length,
        FUN.VALUE = integer(1)
      ) > 0]
    },
    fromList = function(CrsList,
                            typeMapping = NULL) {
      self[["type"]] <-
        CrsList[["type"]]
      self[["properties"]] <-
        CrsList[["properties"]]
      invisible(self)
    },
    toJSONString = function(pretty = TRUE) {
      jsonlite::toJSON(
        self$toList(),
        simplifyVector = TRUE,
        auto_unbox = TRUE,
        pretty = pretty
      )
    },
    fromJSONString = function(CrsJson,
                                  typeMapping = NULL) {
      CrsList <- jsonlite::fromJSON(
        CrsJson,
        simplifyVector = FALSE
      )
      self[["type"]] <-
        CrsList[["type"]]
      self[["properties"]] <-
        CrsList[["properties"]]
      invisible(self)
    }
  )
)
