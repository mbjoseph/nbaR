# Netherlands Biodiversity API
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' Polygon Class
#'
#'
#'
#' @field crs  Crs
#' @field bbox  list(numeric)
#' @field coordinates  list(LngLatAlt)
#'
#' @section Methods:
#' \describe{
#'
#' \item{\code{$new()}}{
#'
#'   Constructor Polygon object.
#'
#' }
#' \item{\code{$fromList(PolygonList)}}{
#'
#'   Create Polygon object from list.
#'
#' }
#'
#' \item{\code{$toList()}}{
#'
#'   Get list representation of Polygon.
#'
#' }
#' \item{\code{fromJSONString(PolygonJson)}}{
#'
#'   Create Polygon object from list.
#'
#' }
#' \item{\code{toJSONString(pretty=TRUE)}}{
#'
#'   Get JSON representation of Polygon.
#'
#' }
#' }
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Polygon <- R6::R6Class(
  "Polygon",
  public = list(
    `crs` = NULL,
    `bbox` = NULL,
    `coordinates` = NULL,
    initialize = function(
                              `crs`,
                              `bbox`,
                              `coordinates`) {
      if (!missing(`crs`)) {
        stopifnot(R6::is.R6(`crs`))
        self[["crs"]] <- `crs`
      }
      if (!missing(`bbox`)) {
        stopifnot(
          is.list(`bbox`),
          length(`bbox`) != 0
        )
        lapply(
          `bbox`,
          function(x) stopifnot(is.character(x))
        )
        self[["bbox"]] <- `bbox`
      }
      if (!missing(`coordinates`)) {
        stopifnot(
          is.list(`coordinates`),
          length(`coordinates`) != 0
        )
        lapply(
          `coordinates`,
          function(x) stopifnot(is.character(x))
        )
        self[["coordinates"]] <- `coordinates`
      }
    },
    toList = function() {
      PolygonList <- list()
      if (!is.null(self[["crs"]])) {
        PolygonList[["crs"]] <-
          self[["crs"]]$toList()
      }
      if (!is.null(self[["bbox"]])) {
        PolygonList[["bbox"]] <-
          self[["bbox"]]
      }
      if (!is.null(self[["coordinates"]])) {
        PolygonList[["coordinates"]] <-
          self[["coordinates"]]
      }
      ## omit empty nested lists in returned list
      PolygonList[vapply(
        PolygonList,
        length,
        FUN.VALUE = integer(1)
      ) > 0]
    },
    fromList = function(PolygonList,
                            typeMapping = NULL) {
      self[["crs"]] <- Crs$new()$fromList(
        PolygonList[["crs"]],
        typeMapping = typeMapping
      )
      self[["bbox"]] <-
        PolygonList[["bbox"]]
      self[["coordinates"]] <-
        PolygonList[["coordinates"]]
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
    fromJSONString = function(PolygonJson,
                                  typeMapping = NULL) {
      PolygonList <- jsonlite::fromJSON(
        PolygonJson,
        simplifyVector = FALSE
      )
      self[["crs"]] <-
        Crs$new()$fromJSONString(
          jsonlite::toJSON(
            PolygonList[["crs"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      self[["bbox"]] <-
        PolygonList[["bbox"]]
      self[["coordinates"]] <-
        PolygonList[["coordinates"]]
      invisible(self)
    }
  )
)
