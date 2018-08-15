# Netherlands Biodiversity API
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' QueryResult Class
#'
#' @field totalSize
#' @field resultSet
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
QueryResult <- R6::R6Class(
  "QueryResult",
  public = list(
    `totalSize` = NULL,
    `resultSet` = NULL,
    initialize = function(
                              `totalSize`,
                              `resultSet`) {
      if (!missing(`totalSize`)) {
        stopifnot(
          is.numeric(`totalSize`),
          length(`totalSize`) == 1
        )
        self[["totalSize"]] <- `totalSize`
      }
      if (!missing(`resultSet`)) {
        stopifnot(
          is.list(`resultSet`),
          length(`resultSet`) != 0
        )
        lapply(
          `resultSet`,
          function(x) stopifnot(R6::is.R6(x))
        )
        self[["resultSet"]] <- `resultSet`
      }
    },
    toList = function() {
      QueryResultList <- list()
      if (!is.null(self[["totalSize"]])) {
        QueryResultList[["totalSize"]] <-
          self[["totalSize"]]
      }
      if (!is.null(self[["resultSet"]])) {
        QueryResultList[["resultSet"]] <-
          lapply(self[["resultSet"]], function(x) x$toList())
      }
      ## omit empty nested lists in returned list
      QueryResultList[vapply(
        QueryResultList,
        length,
        FUN.VALUE = integer(1)
      ) > 0]
    },
    fromList = function(QueryResultList,
                            typeMapping = NULL) {
      self[["totalSize"]] <-
        QueryResultList[["totalSize"]]
      self[["resultSet"]] <- lapply(
        QueryResultList[["resultSet"]],
        function(x) {
          QueryResultItemObject$new()$fromList(x,
            typeMapping = typeMapping
          )
        }
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
    fromJSONString = function(QueryResultJson,
                                  typeMapping = NULL) {
      QueryResultList <- jsonlite::fromJSON(
        QueryResultJson,
        simplifyVector = FALSE
      )
      if (is.null(typeMapping[["totalSize"]])) {
        self[["totalSize"]] <-
          QueryResultList[["totalSize"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["totalSize"]], "$new()")
        ))
        self[["totalSize"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            QueryResultList[["totalSize"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      self[["resultSet"]] <- lapply(
        QueryResultList[["resultSet"]],
        function(x) {
          QueryResultItemObject$new()$fromJSONString(
            jsonlite::toJSON(
              x,
              auto_unbox = TRUE
            ),
            typeMapping = typeMapping
          )
        }
      )
      invisible(self)
    }
  )
)
