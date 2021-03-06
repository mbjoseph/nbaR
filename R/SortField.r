# Netherlands Biodiversity API
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' SortField Class
#'
#'
#'
#' @field path  character
#' @field sortOrder  character
#' @field ascending  logical
#'
#' @section Methods:
#' \describe{
#'
#' \item{\code{$new()}}{
#'
#'   Constructor SortField object.
#'
#' }
#' \item{\code{$fromList(SortFieldList)}}{
#'
#'   Create SortField object from list.
#'
#' }
#'
#' \item{\code{$toList()}}{
#'
#'   Get list representation of SortField.
#'
#' }
#' \item{\code{fromJSONString(SortFieldJson)}}{
#'
#'   Create SortField object from list.
#'
#' }
#' \item{\code{toJSONString(pretty=TRUE)}}{
#'
#'   Get JSON representation of SortField.
#'
#' }
#' }
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SortField <- R6::R6Class(
  "SortField",
  public = list(
    `path` = NULL,
    `sortOrder` = NULL,
    `ascending` = NULL,
    initialize = function(
                              `path`,
                              `sortOrder`,
                              `ascending`) {
      if (!missing(`path`)) {
        self[["path"]] <- `path`
      }
      if (!missing(`sortOrder`)) {
        stopifnot(
          is.character(`sortOrder`),
          length(`sortOrder`) == 1
        )
        self[["sortOrder"]] <- `sortOrder`
      }
      if (!missing(`ascending`)) {
        self[["ascending"]] <- `ascending`
      }
    },
    toList = function() {
      SortFieldList <- list()
      if (!is.null(self[["path"]])) {
        SortFieldList[["path"]] <-
          self[["path"]]
      }
      if (!is.null(self[["sortOrder"]])) {
        SortFieldList[["sortOrder"]] <-
          self[["sortOrder"]]
      }
      if (!is.null(self[["ascending"]])) {
        SortFieldList[["ascending"]] <-
          self[["ascending"]]
      }
      ## omit empty nested lists in returned list
      SortFieldList[vapply(
        SortFieldList,
        length,
        FUN.VALUE = integer(1)
      ) > 0]
    },
    fromList = function(SortFieldList,
                            typeMapping = NULL) {
      self[["path"]] <-
        SortFieldList[["path"]]
      self[["sortOrder"]] <-
        SortFieldList[["sortOrder"]]
      self[["ascending"]] <-
        SortFieldList[["ascending"]]
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
    fromJSONString = function(SortFieldJson,
                                  typeMapping = NULL) {
      SortFieldList <- jsonlite::fromJSON(
        SortFieldJson,
        simplifyVector = FALSE
      )
      self[["path"]] <-
        SortFieldList[["path"]]
      self[["sortOrder"]] <-
        SortFieldList[["sortOrder"]]
      self[["ascending"]] <-
        SortFieldList[["ascending"]]
      invisible(self)
    }
  )
)
