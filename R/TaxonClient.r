# Netherlands Biodiversity API
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' @title Taxon operations
#' @description Client class for nbaR.Taxon objects
#'
#' @field basePath Stores url path of the request.
#' @field userAgent Set the user agent of the request.
#'
#' @importFrom R6 R6Class
#'
#' @section Methods:
#' \describe{
#' \item{\code{ count }}{
#'
#'   Get the number of taxa matching a given condition;
#'   Conditions given as query parameters or a querySpec JSON.
#'
#'     Parameters:
#'     \itemize{
#'         \item \code{ query_spec } : Object of type QuerySpec or its JSON representation
#'         \item \code{ ... } : additional parameters passed to httr::GET
#'     }
#'     Returns:
#'         \code{ integer }
#' }
#' \item{\code{ count_distinct_values }}{
#'
#'   Count the distinct number of values that exist for a given field;
#'   .
#'
#'     Parameters:
#'     \itemize{
#'
#'         \item \code{ ... } : additional parameters passed to httr::GET
#'     }
#'     Returns:
#'         \code{ list }
#' }
#' \item{\code{ count_distinct_values_per_group }}{
#'
#'   Count the distinct number of field values that exist per the given field to group by;
#'   .
#'
#'     Parameters:
#'     \itemize{
#'
#'         \item \code{ ... } : additional parameters passed to httr::GET
#'     }
#'     Returns:
#'         \code{ list }
#' }
#' \item{\code{ download_query }}{
#'
#'   Dynamic download service: Query for taxa and return result as a stream ...;
#'   Query with query parameters or querySpec JSON. ....
#'
#'     Parameters:
#'     \itemize{
#'         \item \code{ query_spec } : Object of type QuerySpec or its JSON representation
#'         \item \code{ ... } : additional parameters passed to httr::GET
#'     }
#'     Returns:
#'         \code{ Taxon }
#' }
#' \item{\code{ dwca_get_data_set }}{
#'
#'   Download dataset as Darwin Core Archive File;
#'   Available datasets can be queried with /taxon/dwca/getDataSetNames. Response saved to &lt;datasetname&gt;-&lt;yyyymmdd&gt;.dwca.zip.
#'
#'     Parameters:
#'     \itemize{
#'
#'         \item \code{ ... } : additional parameters passed to httr::GET
#'     }
#'     Returns:
#'         \code{  }
#' }
#' \item{\code{ dwca_get_data_set_names }}{
#'
#'   Retrieve the names of all available datasets;
#'   Individual datasets can then be downloaded with /dwca/getDataSet/{dataset}.
#'
#'     Parameters:
#'     \itemize{
#'
#'         \item \code{ ... } : additional parameters passed to httr::GET
#'     }
#'     Returns:
#'         \code{ character }
#' }
#' \item{\code{ dwca_query }}{
#'
#'   Dynamic download service: Query for taxa and return result as Darwin Core Archive File;
#'   Query with query parameters or querySpec JSON. Response saved to nba-taxa.dwca.zip.
#'
#'     Parameters:
#'     \itemize{
#'         \item \code{ query_spec } : Object of type QuerySpec or its JSON representation
#'         \item \code{ ... } : additional parameters passed to httr::GET
#'     }
#'     Returns:
#'         \code{  }
#' }
#' \item{\code{ find }}{
#'
#'   Find a taxon by id;
#'   If found, returns a single taxon.
#'
#'     Parameters:
#'     \itemize{
#'
#'         \item \code{ ... } : additional parameters passed to httr::GET
#'     }
#'     Returns:
#'         \code{ Taxon }
#' }
#' \item{\code{ find_by_ids }}{
#'
#'   Find taxa by ids;
#'   Given multiple ids, returns a list of taxa.
#'
#'     Parameters:
#'     \itemize{
#'
#'         \item \code{ ... } : additional parameters passed to httr::GET
#'     }
#'     Returns:
#'         \code{ Taxon }
#' }
#' \item{\code{ get_distinct_values }}{
#'
#'   Get all different values that can be found for one field;
#'   A list of all fields for taxon documents can be retrieved with /metadata/getFieldInfo.
#'
#'     Parameters:
#'     \itemize{
#'
#'         \item \code{ ... } : additional parameters passed to httr::GET
#'     }
#'     Returns:
#'         \code{ list }
#' }
#' \item{\code{ get_distinct_values_per_group }}{
#'
#'   Get all distinct values (and their document count) for the field given divided per distinct value of the field to group by;
#'   .
#'
#'     Parameters:
#'     \itemize{
#'
#'         \item \code{ ... } : additional parameters passed to httr::GET
#'     }
#'     Returns:
#'         \code{ list }
#' }
#' \item{\code{ get_field_info }}{
#'
#'   Returns extended information for each field of a specimen document;
#'   Info consists of whether the fields is indexed, the ElasticSearch datatype and a list of allowed operators.
#'
#'     Parameters:
#'     \itemize{
#'
#'         \item \code{ ... } : additional parameters passed to httr::GET
#'     }
#'     Returns:
#'         \code{ list }
#' }
#' \item{\code{ get_paths }}{
#'
#'   Returns the full path of all fields within a document;
#'   See also metadata/getFieldInfo for all allowed operators per field.
#'
#'     Parameters:
#'     \itemize{
#'
#'         \item \code{ ... } : additional parameters passed to httr::GET
#'     }
#'     Returns:
#'         \code{ character }
#' }
#' \item{\code{ get_setting }}{
#'
#'   Get the value of an NBA setting;
#'   All settings can be queried with /metadata/getSettings.
#'
#'     Parameters:
#'     \itemize{
#'
#'         \item \code{ ... } : additional parameters passed to httr::GET
#'     }
#'     Returns:
#'         \code{ list }
#' }
#' \item{\code{ get_settings }}{
#'
#'   List all publicly available configuration settings for the NBA;
#'   The value of a specific setting can be queried with metadata/getSetting/{name}.
#'
#'     Parameters:
#'     \itemize{
#'
#'         \item \code{ ... } : additional parameters passed to httr::GET
#'     }
#'     Returns:
#'         \code{ list }
#' }
#' \item{\code{ group_by_scientific_name }}{
#'
#'   Aggregates Taxon and Specimen documents according to their scientific names;
#'   Returns a list with ScientificNameGroups, which contain Taxon and Specimen documents that share a scientific name.
#'
#'     Parameters:
#'     \itemize{
#'         \item \code{ query_spec } : Object of type QuerySpec or its JSON representation
#'         \item \code{ ... } : additional parameters passed to httr::GET
#'     }
#'     Returns:
#'         \code{ QueryResult }
#' }
#' \item{\code{ is_operator_allowed }}{
#'
#'   Checks if a given operator is allowed for a given field;
#'   See also metadata/getFieldInfo.
#'
#'     Parameters:
#'     \itemize{
#'
#'         \item \code{ ... } : additional parameters passed to httr::GET
#'     }
#'     Returns:
#'         \code{ list }
#' }
#' \item{\code{ query }}{
#'
#'   Query for taxa;
#'   Search for taxa (GET) using query parameters or a querySpec JSON.
#'
#'     Parameters:
#'     \itemize{
#'         \item \code{ query_spec } : Object of type QuerySpec or its JSON representation
#'         \item \code{ ... } : additional parameters passed to httr::GET
#'     }
#'     Returns:
#'         \code{ QueryResult }
#' }
#' }
#'
#' @export
TaxonClient <- R6::R6Class(
  "TaxonClient",
  inherit = ApiClient,
  public = list(
    initialize = function(basePath, userAgent) {
      super$initialize(basePath, userAgent)
    },

    count = function(
                         querySpec = NULL,
                         queryParams = list(),
                         ...) {
      headerParams <- character()
      if (!is.null(querySpec) & length(queryParams) > 0) {
        stop("Either querySpec or queryParams argument allowed, not both.")
      }

      if (!missing(`querySpec`)) {
        ## querySpec can be either JSON string or object of type QuerySpec.
        param <- ifelse(typeof(`querySpec`) == "environment",
          `querySpec`$toJSONString(),
          `querySpec`
        )
        queryParams["querySpec"] <- param
      }
      ## querySpec parameter has underscore in NBA, omitted in argument
      names(queryParams) <- gsub(
        "querySpec",
        "_querySpec",
        names(queryParams)
      )

      urlPath <- "/taxon/count"
      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = queryParams,
        headerParams = headerParams,
        body = body,
        ...
      )

      if (httr::status_code(response) < 200 ||
        httr::status_code(response) > 299) {
        self$handleError(response)
      } else {
        ## API call result is "primitive type", return vector or single value
        result <- as.integer(httr::content(response))
        Response$new(result, response)
      }
    },
    count_distinct_values = function(
                                         field = NULL,
                                         ...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/taxon/countDistinctValues/{field}"
      if (!missing(`field`)) {
        urlPath <- gsub(paste0("\\{", "field", "\\}"), `field`, urlPath)
      }

      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = queryParams,
        headerParams = headerParams,
        body = body,
        ...
      )

      if (httr::status_code(response) < 200 ||
        httr::status_code(response) > 299) {
        self$handleError(response)
      } else {
        ## API call result is a "map container" and will be parsed to list
        result <- httr::content(response, simplifyVector = TRUE)
        Response$new(result, response)
      }
    },
    count_distinct_values_per_group = function(
                                                   group = NULL,
                                                   field = NULL,
                                                   ...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/taxon/countDistinctValuesPerGroup/{group}/{field}"
      if (!missing(`group`)) {
        urlPath <- gsub(paste0("\\{", "group", "\\}"), `group`, urlPath)
      }

      if (!missing(`field`)) {
        urlPath <- gsub(paste0("\\{", "field", "\\}"), `field`, urlPath)
      }

      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = queryParams,
        headerParams = headerParams,
        body = body,
        ...
      )

      if (httr::status_code(response) < 200 ||
        httr::status_code(response) > 299) {
        self$handleError(response)
      } else {
        ## API call result is a "map container" and will be parsed to list
        result <- httr::content(response, simplifyVector = TRUE)
        Response$new(result, response)
      }
    },
    download_query = function(
                                  querySpec = NULL,
                                  queryParams = list(),
                                  ...) {
      headerParams <- character()
      if (!is.null(querySpec) & length(queryParams) > 0) {
        stop("Either querySpec or queryParams argument allowed, not both.")
      }

      if (!missing(`querySpec`)) {
        ## querySpec can be either JSON string or object of type QuerySpec.
        param <- ifelse(typeof(`querySpec`) == "environment",
          `querySpec`$toJSONString(),
          `querySpec`
        )
        queryParams["querySpec"] <- param
      }
      ## querySpec parameter has underscore in NBA, omitted in argument
      names(queryParams) <- gsub(
        "querySpec",
        "_querySpec",
        names(queryParams)
      )

      urlPath <- "/taxon/download"
      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = queryParams,
        headerParams = headerParams,
        body = body,
        ...
      )

      if (httr::status_code(response) < 200 ||
        httr::status_code(response) > 299) {
        self$handleError(response)
      } else {
        ## API call result is object of model class
        returnObject <- Taxon$new()
        ## API call result is "list container"
        result <- lapply(
          httr::content(response),
          function(x) {
            returnObject$fromList(x,
              typeMapping = list(item = private$getBaseDataType())
            )
          }
        )
        Response$new(result, response)
      }
    },
    dwca_get_data_set = function(
                                     dataset = NULL,
                                     filename = format(
                                       Sys.time(),
                                       "download-%Y-%m-%dT%H:%m.zip"
                                     ),
                                     ...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/taxon/dwca/getDataSet/{dataset}"
      if (!missing(`dataset`)) {
        urlPath <- gsub(paste0("\\{", "dataset", "\\}"), `dataset`, urlPath)
      }

      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = queryParams,
        headerParams = headerParams,
        body = body,
        httr::write_disk(filename),
        httr::progress(),
        ...
      )

      if (httr::status_code(response) < 200 ||
        httr::status_code(response) > 299) {
        self$handleError(response)
      } else {
        message("Query result written to ", filename)
        ## empty response, e.g. when file is downloaded
        result <- NULL
        Response$new(result, response)
      }
    },
    dwca_get_data_set_names = function(
                                           ...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/taxon/dwca/getDataSetNames"
      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = queryParams,
        headerParams = headerParams,
        body = body,
        ...
      )

      if (httr::status_code(response) < 200 ||
        httr::status_code(response) > 299) {
        self$handleError(response)
      } else {
        ## API call result is "primitive type", return vector or single value
        result <- as.character(httr::content(response))
        Response$new(result, response)
      }
    },
    dwca_query = function(
                              querySpec = NULL,
                              queryParams = list(),
                              filename = format(
                                Sys.time(),
                                "download-%Y-%m-%dT%H:%m.zip"
                              ),
                              ...) {
      headerParams <- character()
      if (!is.null(querySpec) & length(queryParams) > 0) {
        stop("Either querySpec or queryParams argument allowed, not both.")
      }

      if (!missing(`querySpec`)) {
        ## querySpec can be either JSON string or object of type QuerySpec.
        param <- ifelse(typeof(`querySpec`) == "environment",
          `querySpec`$toJSONString(),
          `querySpec`
        )
        queryParams["querySpec"] <- param
      }
      ## querySpec parameter has underscore in NBA, omitted in argument
      names(queryParams) <- gsub(
        "querySpec",
        "_querySpec",
        names(queryParams)
      )

      urlPath <- "/taxon/dwca/query"
      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = queryParams,
        headerParams = headerParams,
        body = body,
        httr::write_disk(filename),
        httr::progress(),
        ...
      )

      if (httr::status_code(response) < 200 ||
        httr::status_code(response) > 299) {
        self$handleError(response)
      } else {
        message("Query result written to ", filename)
        ## empty response, e.g. when file is downloaded
        result <- NULL
        Response$new(result, response)
      }
    },
    find = function(
                        id = NULL,
                        ...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/taxon/find/{id}"
      if (!missing(`id`)) {
        urlPath <- gsub(paste0("\\{", "id", "\\}"), `id`, urlPath)
      }

      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = queryParams,
        headerParams = headerParams,
        body = body,
        ...
      )

      if (httr::status_code(response) < 200 ||
        httr::status_code(response) > 299) {
        self$handleError(response)
      } else {
        ## API call result is object of model class
        returnObject <- Taxon$new()
        ## if API call result is QueryResult,
        ## list items must be mapped to model class
        ## if (class(returnObject)[1] == "QueryResult") {
        ##  returnObject$docType <- private$getBaseDataType()
        ## }
        result <- returnObject$fromList(
          httr::content(response),
          typeMapping = list(item = private$getBaseDataType())
        )
        Response$new(result, response)
      }
    },
    find_by_ids = function(
                               ids = NULL,
                               ...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/taxon/findByIds/{ids}"
      if (!missing(`ids`)) {
        urlPath <- gsub(paste0("\\{", "ids", "\\}"), `ids`, urlPath)
      }

      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = queryParams,
        headerParams = headerParams,
        body = body,
        ...
      )

      if (httr::status_code(response) < 200 ||
        httr::status_code(response) > 299) {
        self$handleError(response)
      } else {
        ## API call result is object of model class
        returnObject <- Taxon$new()
        ## API call result is "list container"
        result <- lapply(
          httr::content(response),
          function(x) {
            returnObject$fromList(x,
              typeMapping = list(item = private$getBaseDataType())
            )
          }
        )
        Response$new(result, response)
      }
    },
    get_distinct_values = function(
                                       field = NULL,
                                       ...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/taxon/getDistinctValues/{field}"
      if (!missing(`field`)) {
        urlPath <- gsub(paste0("\\{", "field", "\\}"), `field`, urlPath)
      }

      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = queryParams,
        headerParams = headerParams,
        body = body,
        ...
      )

      if (httr::status_code(response) < 200 ||
        httr::status_code(response) > 299) {
        self$handleError(response)
      } else {
        ## API call result is a "map container" and will be parsed to list
        result <- httr::content(response, simplifyVector = TRUE)
        Response$new(result, response)
      }
    },
    get_distinct_values_per_group = function(
                                                 group = NULL,
                                                 field = NULL,
                                                 ...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/taxon/getDistinctValuesPerGroup/{group}/{field}"
      if (!missing(`group`)) {
        urlPath <- gsub(paste0("\\{", "group", "\\}"), `group`, urlPath)
      }

      if (!missing(`field`)) {
        urlPath <- gsub(paste0("\\{", "field", "\\}"), `field`, urlPath)
      }

      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = queryParams,
        headerParams = headerParams,
        body = body,
        ...
      )

      if (httr::status_code(response) < 200 ||
        httr::status_code(response) > 299) {
        self$handleError(response)
      } else {
        ## API call result is "primitive type", return vector or single value
        result <- as.list(httr::content(response))
        Response$new(result, response)
      }
    },
    get_field_info = function(
                                  ...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/taxon/metadata/getFieldInfo"
      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = queryParams,
        headerParams = headerParams,
        body = body,
        ...
      )

      if (httr::status_code(response) < 200 ||
        httr::status_code(response) > 299) {
        self$handleError(response)
      } else {
        ## API call result is a "map container" and will be parsed to list
        result <- httr::content(response, simplifyVector = TRUE)
        Response$new(result, response)
      }
    },
    get_paths = function(
                             ...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/taxon/metadata/getPaths"
      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = queryParams,
        headerParams = headerParams,
        body = body,
        ...
      )

      if (httr::status_code(response) < 200 ||
        httr::status_code(response) > 299) {
        self$handleError(response)
      } else {
        ## API call result is "primitive type", return vector or single value
        result <- as.character(httr::content(response))
        Response$new(result, response)
      }
    },
    get_setting = function(
                               name = NULL,
                               ...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/taxon/metadata/getSetting/{name}"
      if (!missing(`name`)) {
        urlPath <- gsub(paste0("\\{", "name", "\\}"), `name`, urlPath)
      }

      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = queryParams,
        headerParams = headerParams,
        body = body,
        ...
      )

      if (httr::status_code(response) < 200 ||
        httr::status_code(response) > 299) {
        self$handleError(response)
      } else {
        ## API call result is "primitive type", return vector or single value
        result <- as.list(httr::content(response))
        Response$new(result, response)
      }
    },
    get_settings = function(
                                ...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/taxon/metadata/getSettings"
      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = queryParams,
        headerParams = headerParams,
        body = body,
        ...
      )

      if (httr::status_code(response) < 200 ||
        httr::status_code(response) > 299) {
        self$handleError(response)
      } else {
        ## API call result is a "map container" and will be parsed to list
        result <- httr::content(response, simplifyVector = TRUE)
        Response$new(result, response)
      }
    },
    group_by_scientific_name = function(
                                            querySpec = NULL,
                                            queryParams = list(),
                                            ...) {
      headerParams <- character()
      if (!is.null(querySpec) & length(queryParams) > 0) {
        stop("Either querySpec or queryParams argument allowed, not both.")
      }

      if (!missing(`querySpec`)) {
        ## querySpec can be either JSON string or object of type QuerySpec.
        param <- ifelse(typeof(`querySpec`) == "environment",
          `querySpec`$toJSONString(),
          `querySpec`
        )
        queryParams["querySpec"] <- param
      }
      ## querySpec parameter has underscore in NBA, omitted in argument
      names(queryParams) <- gsub(
        "querySpec",
        "_querySpec",
        names(queryParams)
      )

      urlPath <- "/taxon/groupByScientificName"
      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = queryParams,
        headerParams = headerParams,
        body = body,
        ...
      )

      if (httr::status_code(response) < 200 ||
        httr::status_code(response) > 299) {
        self$handleError(response)
      } else {
        ## API call result is object of model class
        returnObject <- QueryResult$new()
        ## if API call result is QueryResult,
        ## list items must be mapped to model class
        ## if (class(returnObject)[1] == "QueryResult") {
        ##  returnObject$docType <- private$getBaseDataType()
        ## }
        result <- returnObject$fromList(
          httr::content(response),
          typeMapping = list(item = private$getBaseDataType())
        )
        Response$new(result, response)
      }
    },
    is_operator_allowed = function(
                                       field = NULL,
                                       operator = NULL,
                                       ...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/taxon/metadata/isOperatorAllowed/{field}/{operator}"
      if (!missing(`field`)) {
        urlPath <- gsub(paste0("\\{", "field", "\\}"), `field`, urlPath)
      }

      if (!missing(`operator`)) {
        urlPath <- gsub(paste0("\\{", "operator", "\\}"), `operator`, urlPath)
      }

      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = queryParams,
        headerParams = headerParams,
        body = body,
        ...
      )

      if (httr::status_code(response) < 200 ||
        httr::status_code(response) > 299) {
        self$handleError(response)
      } else {
        ## API call result is a "map container" and will be parsed to list
        result <- httr::content(response, simplifyVector = TRUE)
        Response$new(result, response)
      }
    },
    query = function(
                         querySpec = NULL,
                         queryParams = list(),
                         ...) {
      headerParams <- character()
      if (!is.null(querySpec) & length(queryParams) > 0) {
        stop("Either querySpec or queryParams argument allowed, not both.")
      }

      if (!missing(`querySpec`)) {
        ## querySpec can be either JSON string or object of type QuerySpec.
        param <- ifelse(typeof(`querySpec`) == "environment",
          `querySpec`$toJSONString(),
          `querySpec`
        )
        queryParams["querySpec"] <- param
      }
      ## querySpec parameter has underscore in NBA, omitted in argument
      names(queryParams) <- gsub(
        "querySpec",
        "_querySpec",
        names(queryParams)
      )

      urlPath <- "/taxon/query"
      response <- self$callApi(
        url = paste0(self$basePath, urlPath),
        method = "GET",
        queryParams = queryParams,
        headerParams = headerParams,
        body = body,
        ...
      )

      if (httr::status_code(response) < 200 ||
        httr::status_code(response) > 299) {
        self$handleError(response)
      } else {
        ## API call result is object of model class
        returnObject <- QueryResult$new()
        ## if API call result is QueryResult,
        ## list items must be mapped to model class
        ## if (class(returnObject)[1] == "QueryResult") {
        ##  returnObject$docType <- private$getBaseDataType()
        ## }
        result <- returnObject$fromList(
          httr::content(response),
          typeMapping = list(item = private$getBaseDataType())
        )
        Response$new(result, response)
      }
    }
  )
)
