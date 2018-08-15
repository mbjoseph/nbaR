# Netherlands Biodiversity API
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' Feature Class
#'
#' @field crs
#' @field bbox
#' @field properties
#' @field geometry
#' @field id
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Feature <- R6::R6Class(
  "Feature",
  public = list(
    `crs` = NULL,
    `bbox` = NULL,
    `properties` = NULL,
    `geometry` = NULL,
    `id` = NULL,
    initialize = function(
                              `crs`,
                              `bbox`,
                              `properties`,
                              `geometry`,
                              `id`) {
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
      if (!missing(`properties`)) {
        self[["properties"]] <- `properties`
      }
      if (!missing(`geometry`)) {
        self[["geometry"]] <- `geometry`
      }
      if (!missing(`id`)) {
        stopifnot(
          is.character(`id`),
          length(`id`) == 1
        )
        self[["id"]] <- `id`
      }
    },
    toList = function() {
      FeatureList <- list()
      if (!is.null(self[["crs"]])) {
        FeatureList[["crs"]] <-
          self[["crs"]]$toList()
      }
      if (!is.null(self[["bbox"]])) {
        FeatureList[["bbox"]] <-
          self[["bbox"]]
      }
      if (!is.null(self[["properties"]])) {
        FeatureList[["properties"]] <-
          self[["properties"]]
      }
      if (!is.null(self[["geometry"]])) {
        FeatureList[["geometry"]] <-
          self[["geometry"]]
      }
      if (!is.null(self[["id"]])) {
        FeatureList[["id"]] <-
          self[["id"]]
      }
      ## omit empty nested lists in returned list
      FeatureList[vapply(
        FeatureList,
        length,
        FUN.VALUE = integer(1)
      ) > 0]
    },
    fromList = function(FeatureList,
                            typeMapping = NULL) {
      self[["crs"]] <- Crs$new()$fromList(
        FeatureList[["crs"]],
        typeMapping = typeMapping
      )
      self[["bbox"]] <-
        FeatureList[["bbox"]]
      self[["properties"]] <-
        FeatureList[["properties"]]
      self[["geometry"]] <-
        FeatureList[["geometry"]]
      self[["id"]] <-
        FeatureList[["id"]]
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
    fromJSONString = function(FeatureJson,
                                  typeMapping = NULL) {
      FeatureList <- jsonlite::fromJSON(
        FeatureJson,
        simplifyVector = FALSE
      )
      if (is.null(typeMapping[["crs"]])) {
        self[["crs"]] <-
          Crs$new()$fromJSONString(
            jsonlite::toJSON(
              FeatureList[["crs"]],
              auto_unbox = TRUE
            ),
            typeMapping = typeMapping
          )
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["crs"]], "$new()")
        ))
        self[["crs"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            FeatureList[["crs"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["bbox"]])) {
        self[["bbox"]] <-
          FeatureList[["bbox"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["bbox"]], "$new()")
        ))
        self[["bbox"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            FeatureList[["bbox"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["properties"]])) {
        self[["properties"]] <-
          FeatureList[["properties"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["properties"]], "$new()")
        ))
        self[["properties"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            FeatureList[["properties"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["geometry"]])) {
        self[["geometry"]] <-
          FeatureList[["geometry"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["geometry"]], "$new()")
        ))
        self[["geometry"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            FeatureList[["geometry"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["id"]])) {
        self[["id"]] <-
          FeatureList[["id"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["id"]], "$new()")
        ))
        self[["id"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            FeatureList[["id"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      invisible(self)
    }
  )
)
