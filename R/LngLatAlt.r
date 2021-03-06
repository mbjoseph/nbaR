# Netherlands Biodiversity API
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' LngLatAlt Class
#'
#'
#'
#' @field longitude  numeric
#' @field latitude  numeric
#' @field altitude  numeric
#' @field additionalElements  list(numeric)
#'
#' @section Methods:
#' \describe{
#'
#' \item{\code{$new()}}{
#'
#'   Constructor LngLatAlt object.
#'
#' }
#' \item{\code{$fromList(LngLatAltList)}}{
#'
#'   Create LngLatAlt object from list.
#'
#' }
#'
#' \item{\code{$toList()}}{
#'
#'   Get list representation of LngLatAlt.
#'
#' }
#' \item{\code{fromJSONString(LngLatAltJson)}}{
#'
#'   Create LngLatAlt object from list.
#'
#' }
#' \item{\code{toJSONString(pretty=TRUE)}}{
#'
#'   Get JSON representation of LngLatAlt.
#'
#' }
#' }
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
LngLatAlt <- R6::R6Class(
  "LngLatAlt",
  public = list(
    `longitude` = NULL,
    `latitude` = NULL,
    `altitude` = NULL,
    `additionalElements` = NULL,
    initialize = function(
                              `longitude`,
                              `latitude`,
                              `altitude`,
                              `additionalElements`) {
      if (!missing(`longitude`)) {
        stopifnot(
          is.numeric(`longitude`),
          length(`longitude`) == 1
        )
        self[["longitude"]] <- `longitude`
      }
      if (!missing(`latitude`)) {
        stopifnot(
          is.numeric(`latitude`),
          length(`latitude`) == 1
        )
        self[["latitude"]] <- `latitude`
      }
      if (!missing(`altitude`)) {
        stopifnot(
          is.numeric(`altitude`),
          length(`altitude`) == 1
        )
        self[["altitude"]] <- `altitude`
      }
      if (!missing(`additionalElements`)) {
        stopifnot(
          is.list(`additionalElements`),
          length(`additionalElements`) != 0
        )
        lapply(
          `additionalElements`,
          function(x) stopifnot(is.character(x))
        )
        self[["additionalElements"]] <- `additionalElements`
      }
    },
    toList = function() {
      LngLatAltList <- list()
      if (!is.null(self[["longitude"]])) {
        LngLatAltList[["longitude"]] <-
          self[["longitude"]]
      }
      if (!is.null(self[["latitude"]])) {
        LngLatAltList[["latitude"]] <-
          self[["latitude"]]
      }
      if (!is.null(self[["altitude"]])) {
        LngLatAltList[["altitude"]] <-
          self[["altitude"]]
      }
      if (!is.null(self[["additionalElements"]])) {
        LngLatAltList[["additionalElements"]] <-
          self[["additionalElements"]]
      }
      ## omit empty nested lists in returned list
      LngLatAltList[vapply(
        LngLatAltList,
        length,
        FUN.VALUE = integer(1)
      ) > 0]
    },
    fromList = function(LngLatAltList,
                            typeMapping = NULL) {
      self[["longitude"]] <-
        LngLatAltList[["longitude"]]
      self[["latitude"]] <-
        LngLatAltList[["latitude"]]
      self[["altitude"]] <-
        LngLatAltList[["altitude"]]
      self[["additionalElements"]] <-
        LngLatAltList[["additionalElements"]]
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
    fromJSONString = function(LngLatAltJson,
                                  typeMapping = NULL) {
      LngLatAltList <- jsonlite::fromJSON(
        LngLatAltJson,
        simplifyVector = FALSE
      )
      self[["longitude"]] <-
        LngLatAltList[["longitude"]]
      self[["latitude"]] <-
        LngLatAltList[["latitude"]]
      self[["altitude"]] <-
        LngLatAltList[["altitude"]]
      self[["additionalElements"]] <-
        LngLatAltList[["additionalElements"]]
      invisible(self)
    }
  )
)
