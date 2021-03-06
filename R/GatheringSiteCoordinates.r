# Netherlands Biodiversity API
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' GatheringSiteCoordinates Class
#'
#'
#'
#' @field longitudeDecimal  numeric
#' @field latitudeDecimal  numeric
#' @field gridCellSystem  character
#' @field gridLatitudeDecimal  numeric
#' @field gridLongitudeDecimal  numeric
#' @field gridCellCode  character
#' @field gridQualifier  character
#' @field geoShape  Point
#'
#' @section Methods:
#' \describe{
#'
#' \item{\code{$new()}}{
#'
#'   Constructor GatheringSiteCoordinates object.
#'
#' }
#' \item{\code{$fromList(GatheringSiteCoordinatesList)}}{
#'
#'   Create GatheringSiteCoordinates object from list.
#'
#' }
#'
#' \item{\code{$toList()}}{
#'
#'   Get list representation of GatheringSiteCoordinates.
#'
#' }
#' \item{\code{fromJSONString(GatheringSiteCoordinatesJson)}}{
#'
#'   Create GatheringSiteCoordinates object from list.
#'
#' }
#' \item{\code{toJSONString(pretty=TRUE)}}{
#'
#'   Get JSON representation of GatheringSiteCoordinates.
#'
#' }
#' }
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GatheringSiteCoordinates <- R6::R6Class(
  "GatheringSiteCoordinates",
  public = list(
    `longitudeDecimal` = NULL,
    `latitudeDecimal` = NULL,
    `gridCellSystem` = NULL,
    `gridLatitudeDecimal` = NULL,
    `gridLongitudeDecimal` = NULL,
    `gridCellCode` = NULL,
    `gridQualifier` = NULL,
    `geoShape` = NULL,
    initialize = function(
                              `longitudeDecimal`,
                              `latitudeDecimal`,
                              `gridCellSystem`,
                              `gridLatitudeDecimal`,
                              `gridLongitudeDecimal`,
                              `gridCellCode`,
                              `gridQualifier`,
                              `geoShape`) {
      if (!missing(`longitudeDecimal`)) {
        stopifnot(
          is.numeric(`longitudeDecimal`),
          length(`longitudeDecimal`) == 1
        )
        self[["longitudeDecimal"]] <- `longitudeDecimal`
      }
      if (!missing(`latitudeDecimal`)) {
        stopifnot(
          is.numeric(`latitudeDecimal`),
          length(`latitudeDecimal`) == 1
        )
        self[["latitudeDecimal"]] <- `latitudeDecimal`
      }
      if (!missing(`gridCellSystem`)) {
        stopifnot(
          is.character(`gridCellSystem`),
          length(`gridCellSystem`) == 1
        )
        self[["gridCellSystem"]] <- `gridCellSystem`
      }
      if (!missing(`gridLatitudeDecimal`)) {
        stopifnot(
          is.numeric(`gridLatitudeDecimal`),
          length(`gridLatitudeDecimal`) == 1
        )
        self[["gridLatitudeDecimal"]] <- `gridLatitudeDecimal`
      }
      if (!missing(`gridLongitudeDecimal`)) {
        stopifnot(
          is.numeric(`gridLongitudeDecimal`),
          length(`gridLongitudeDecimal`) == 1
        )
        self[["gridLongitudeDecimal"]] <- `gridLongitudeDecimal`
      }
      if (!missing(`gridCellCode`)) {
        stopifnot(
          is.character(`gridCellCode`),
          length(`gridCellCode`) == 1
        )
        self[["gridCellCode"]] <- `gridCellCode`
      }
      if (!missing(`gridQualifier`)) {
        stopifnot(
          is.character(`gridQualifier`),
          length(`gridQualifier`) == 1
        )
        self[["gridQualifier"]] <- `gridQualifier`
      }
      if (!missing(`geoShape`)) {
        stopifnot(R6::is.R6(`geoShape`))
        self[["geoShape"]] <- `geoShape`
      }
    },
    toList = function() {
      GatheringSiteCoordinatesList <- list()
      if (!is.null(self[["longitudeDecimal"]])) {
        GatheringSiteCoordinatesList[["longitudeDecimal"]] <-
          self[["longitudeDecimal"]]
      }
      if (!is.null(self[["latitudeDecimal"]])) {
        GatheringSiteCoordinatesList[["latitudeDecimal"]] <-
          self[["latitudeDecimal"]]
      }
      if (!is.null(self[["gridCellSystem"]])) {
        GatheringSiteCoordinatesList[["gridCellSystem"]] <-
          self[["gridCellSystem"]]
      }
      if (!is.null(self[["gridLatitudeDecimal"]])) {
        GatheringSiteCoordinatesList[["gridLatitudeDecimal"]] <-
          self[["gridLatitudeDecimal"]]
      }
      if (!is.null(self[["gridLongitudeDecimal"]])) {
        GatheringSiteCoordinatesList[["gridLongitudeDecimal"]] <-
          self[["gridLongitudeDecimal"]]
      }
      if (!is.null(self[["gridCellCode"]])) {
        GatheringSiteCoordinatesList[["gridCellCode"]] <-
          self[["gridCellCode"]]
      }
      if (!is.null(self[["gridQualifier"]])) {
        GatheringSiteCoordinatesList[["gridQualifier"]] <-
          self[["gridQualifier"]]
      }
      if (!is.null(self[["geoShape"]])) {
        GatheringSiteCoordinatesList[["geoShape"]] <-
          self[["geoShape"]]$toList()
      }
      ## omit empty nested lists in returned list
      GatheringSiteCoordinatesList[vapply(
        GatheringSiteCoordinatesList,
        length,
        FUN.VALUE = integer(1)
      ) > 0]
    },
    fromList = function(GatheringSiteCoordinatesList,
                            typeMapping = NULL) {
      self[["longitudeDecimal"]] <-
        GatheringSiteCoordinatesList[["longitudeDecimal"]]
      self[["latitudeDecimal"]] <-
        GatheringSiteCoordinatesList[["latitudeDecimal"]]
      self[["gridCellSystem"]] <-
        GatheringSiteCoordinatesList[["gridCellSystem"]]
      self[["gridLatitudeDecimal"]] <-
        GatheringSiteCoordinatesList[["gridLatitudeDecimal"]]
      self[["gridLongitudeDecimal"]] <-
        GatheringSiteCoordinatesList[["gridLongitudeDecimal"]]
      self[["gridCellCode"]] <-
        GatheringSiteCoordinatesList[["gridCellCode"]]
      self[["gridQualifier"]] <-
        GatheringSiteCoordinatesList[["gridQualifier"]]
      self[["geoShape"]] <- Point$new()$fromList(
        GatheringSiteCoordinatesList[["geoShape"]],
        typeMapping = typeMapping
      )
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
    fromJSONString = function(GatheringSiteCoordinatesJson,
                                  typeMapping = NULL) {
      GatheringSiteCoordinatesList <- jsonlite::fromJSON(
        GatheringSiteCoordinatesJson,
        simplifyVector = FALSE
      )
      self[["longitudeDecimal"]] <-
        GatheringSiteCoordinatesList[["longitudeDecimal"]]
      self[["latitudeDecimal"]] <-
        GatheringSiteCoordinatesList[["latitudeDecimal"]]
      self[["gridCellSystem"]] <-
        GatheringSiteCoordinatesList[["gridCellSystem"]]
      self[["gridLatitudeDecimal"]] <-
        GatheringSiteCoordinatesList[["gridLatitudeDecimal"]]
      self[["gridLongitudeDecimal"]] <-
        GatheringSiteCoordinatesList[["gridLongitudeDecimal"]]
      self[["gridCellCode"]] <-
        GatheringSiteCoordinatesList[["gridCellCode"]]
      self[["gridQualifier"]] <-
        GatheringSiteCoordinatesList[["gridQualifier"]]
      self[["geoShape"]] <-
        Point$new()$fromJSONString(
          jsonlite::toJSON(
            GatheringSiteCoordinatesList[["geoShape"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      invisible(self)
    }
  )
)
