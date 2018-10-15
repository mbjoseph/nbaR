# Netherlands Biodiversity API
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' @title Specimen operations
#' @description Client class for nbaR.Specimen objects
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
#'   Get the number of specimens matching a given condition;
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
#'         \item \code{ query_spec } : Object of type QuerySpec or its JSON representation
#'         \item \code{ ... } : additional parameters passed to httr::GET
#'     }
#'     Returns:
#'         \code{ integer }
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
#'   Dynamic download service: Query for specimens and return result as a stream ...;
#'   Query with query parameters or querySpec JSON. ....
#'
#'     Parameters:
#'     \itemize{
#'         \item \code{ query_spec } : Object of type QuerySpec or its JSON representation
#'         \item \code{ ... } : additional parameters passed to httr::GET
#'     }
#'     Returns:
#'         \code{ Specimen }
#' }
#' \item{\code{ dwca_get_data_set }}{
#'
#'   Download dataset as Darwin Core Archive File;
#'   Available datasets can be queried with /specimen/dwca/getDataSetNames. Response saved to &lt;datasetname&gt;-&lt;yyyymmdd&gt;.dwca.zip.
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
#'   Dynamic download service: Query for specimens and return result as Darwin Core Archive File;
#'   Query with query parameters or querySpec JSON. Response saved to nba-specimens.dwca.zip.
#'
#'     Parameters:
#'     \itemize{
#'         \item \code{ query_spec } : Object of type QuerySpec or its JSON representation
#'         \item \code{ ... } : additional parameters passed to httr::GET
#'     }
#'     Returns:
#'         \code{  }
#' }
#' \item{\code{ exists }}{
#'
#'   Returns whether or not a unitID for a specimen exists;
#'   Returns either true or false.
#'
#'     Parameters:
#'     \itemize{
#'
#'         \item \code{ ... } : additional parameters passed to httr::GET
#'     }
#'     Returns:
#'         \code{ logical }
#' }
#' \item{\code{ find }}{
#'
#'   Find a specimen by id;
#'   If found, returns a single specimen.
#'
#'     Parameters:
#'     \itemize{
#'
#'         \item \code{ ... } : additional parameters passed to httr::GET
#'     }
#'     Returns:
#'         \code{ Specimen }
#' }
#' \item{\code{ find_by_ids }}{
#'
#'   Find specimens by ids;
#'   Given multiple ids, returns a list of specimen.
#'
#'     Parameters:
#'     \itemize{
#'
#'         \item \code{ ... } : additional parameters passed to httr::GET
#'     }
#'     Returns:
#'         \code{ Specimen }
#' }
#' \item{\code{ find_by_unit_id }}{
#'
#'   Find a specimen by unitID;
#'   Get a specimen by its unitID. Returns a list of specimens since unitIDs are not strictly unique.
#'
#'     Parameters:
#'     \itemize{
#'
#'         \item \code{ ... } : additional parameters passed to httr::GET
#'     }
#'     Returns:
#'         \code{ Specimen }
#' }
#' \item{\code{ get_distinct_values }}{
#'
#'   Get all different values that exist for a field;
#'   A list of all fields for specimen documents can be retrieved with /metadata/getFieldInfo.
#'
#'     Parameters:
#'     \itemize{
#'         \item \code{ query_spec } : Object of type QuerySpec or its JSON representation
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
#' \item{\code{ get_ids_in_collection }}{
#'
#'   Retrieve all ids within a &#39;special collection&#39; of specimens;
#'   Available collections can be queried with /getNamedCollections.
#'
#'     Parameters:
#'     \itemize{
#'
#'         \item \code{ ... } : additional parameters passed to httr::GET
#'     }
#'     Returns:
#'         \code{ character }
#' }
#' \item{\code{ get_named_collections }}{
#'
#'   Retrieve the names of all &#39;special collections&#39; of specimens;
#'   .
#'
#'     Parameters:
#'     \itemize{
#'
#'         \item \code{ ... } : additional parameters passed to httr::GET
#'     }
#'     Returns:
#'         \code{ character }
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
#'         \code{ logical }
#' }
#' \item{\code{ query }}{
#'
#'   Query for specimens;
#'   Search for specimens (GET) using query parameters or a querySpec JSON.
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
SpecimenClient <- R6::R6Class(
  "SpecimenClient",
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

      urlPath <- "/specimen/count"
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

      urlPath <- "/specimen/countDistinctValues/{field}"
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
        result <- as.integer(httr::content(response))
        Response$new(result, response)
      }
    },
    count_distinct_values_per_group = function(
                                                   group = NULL,
                                                   field = NULL,
                                                   ...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/specimen/countDistinctValuesPerGroup/{group}/{field}"
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

      urlPath <- "/specimen/download"
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
        returnObject <- Specimen$new()
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
      urlPath <- "/specimen/dwca/getDataSet/{dataset}"
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
      urlPath <- "/specimen/dwca/getDataSetNames"
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

      urlPath <- "/specimen/dwca/query"
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
    exists = function(
                          unitID = NULL,
                          ...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/specimen/exists/{unitID}"
      if (!missing(`unitID`)) {
        urlPath <- gsub(paste0("\\{", "unitID", "\\}"), `unitID`, urlPath)
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
        result <- as.logical(httr::content(response))
        Response$new(result, response)
      }
    },
    find = function(
                        id = NULL,
                        ...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/specimen/find/{id}"
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
        returnObject <- Specimen$new()
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
      urlPath <- "/specimen/findByIds/{ids}"
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
        returnObject <- Specimen$new()
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
    find_by_unit_id = function(
                                   unitID = NULL,
                                   ...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/specimen/findByUnitID/{unitID}"
      if (!missing(`unitID`)) {
        urlPath <- gsub(paste0("\\{", "unitID", "\\}"), `unitID`, urlPath)
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
        returnObject <- Specimen$new()
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

      urlPath <- "/specimen/getDistinctValues/{field}"
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
      urlPath <- "/specimen/getDistinctValuesPerGroup/{group}/{field}"
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
      urlPath <- "/specimen/metadata/getFieldInfo"
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
    get_ids_in_collection = function(
                                         name = NULL,
                                         ...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/specimen/getIdsInCollection/{name}"
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
        result <- as.character(httr::content(response))
        Response$new(result, response)
      }
    },
    get_named_collections = function(
                                         ...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/specimen/getNamedCollections"
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
    get_paths = function(
                             ...) {
      headerParams <- character()
      queryParams <- list()
      urlPath <- "/specimen/metadata/getPaths"
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
      urlPath <- "/specimen/metadata/getSetting/{name}"
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
      urlPath <- "/specimen/metadata/getSettings"
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

      urlPath <- "/specimen/groupByScientificName"
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
      urlPath <- "/specimen/metadata/isOperatorAllowed/{field}/{operator}"
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
        ## API call result is "primitive type", return vector or single value
        result <- as.logical(httr::content(response))
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

      urlPath <- "/specimen/query"
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
