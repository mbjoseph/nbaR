# Netherlands Biodiversity API
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' QueryResultItemObject Class
#'
#' @field score
#' @field item
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
QueryResultItemObject <- R6::R6Class(
  "QueryResultItemObject",
  public = list(
    `score` = NULL,
    `item` = NULL,
    initialize = function(
                              `score`,
                              `item`) {
      if (!missing(`score`)) {
        stopifnot(
          is.numeric(`score`),
          length(`score`) == 1
        )
        self[["score"]] <- `score`
      }
      if (!missing(`item`)) {
        self[["item"]] <- `item`
      }
    },
    toList = function() {
      QueryResultItemObjectList <- list()
      if (!is.null(self[["score"]])) {
        QueryResultItemObjectList[["score"]] <-
          self[["score"]]
      }
      if (!is.null(self[["item"]])) {
        QueryResultItemObjectList[["item"]] <-
          self[["item"]]
      }
      ## omit empty nested lists in returned list
      QueryResultItemObjectList[vapply(
        QueryResultItemObjectList,
        length,
        FUN.VALUE = integer(1)
      ) > 0]
    },
    fromList = function(QueryResultItemObjectList,
                            typeMapping = NULL) {
      self[["score"]] <-
        QueryResultItemObjectList[["score"]]
      if (is.null(typeMapping[["item"]])) {
        self[["item"]] <-
          QueryResultItemObjectList[["item"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["item"]], "$new()")
        ))
        self[["item"]] <- obj$fromList(
          QueryResultItemObjectList[["item"]],
          typeMapping = typeMapping
        )
      }
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
    fromJSONString = function(QueryResultItemObjectJson,
                                  typeMapping = NULL) {
      QueryResultItemObjectList <- jsonlite::fromJSON(
        QueryResultItemObjectJson,
        simplifyVector = FALSE
      )
      if (is.null(typeMapping[["score"]])) {
        self[["score"]] <-
          QueryResultItemObjectList[["score"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["score"]], "$new()")
        ))
        self[["score"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            QueryResultItemObjectList[["score"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["item"]])) {
        self[["item"]] <-
          QueryResultItemObjectList[["item"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["item"]], "$new()")
        ))
        self[["item"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            QueryResultItemObjectList[["item"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      invisible(self)
    }
  )
)
