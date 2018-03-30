# Netherlands Biodiversity Api
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' @title Specimen operations
#' @description nbaR.Specimen
#'
#' @field path Stores url path of the request.
#' @field apiClient Handles the client-server communication.
#' @field userAgent Set the user agent of the request.
#'
#' @importFrom R6 R6Class
#'
#' @section Methods:
#' \describe{
#'
#' query_http_get2 Query for specimens
#'
#' }
#'
#' @export
SpecimenClient <- R6::R6Class(
    'SpecimenClient',
    inherit=ApiClient,
    public = list(
        userAgent = "Swagger-Codegen/0.0.0/r",
        apiClient = NULL,
        initialize = function(basePath){
        super$initialize(basePath)
    },

      # '@name query_http_get2
      # '@title Query for specimens
      # '@description Search for specimens (GET) using query parameters or a querySpec JSON
      # '@return \code{ QueryResult }
      # '@param query_spec: QuerySpec; Object of type QuerySpec or its JSON representation
    query_http_get2 = function(query_spec, ...){
        args <- list(...)
        queryParams <- list()
        headerParams <- character()
        
        if (! missing(`query_spec`)) {
            if (class(query_spec)[2] != "R6" | is.na(class(query_spec)[2])) {
                queryParams['_querySpec'] <- query_spec
            } else {
                queryParams['_querySpec'] <- query_spec$toJSONString()
            }          
        }
        
        urlPath <- "/specimen/query"
        resp <- self$callApi(url = paste0(self$basePath, urlPath),
                             method = "GET",
                             queryParams = queryParams,
                             headerParams = headerParams,
                             body = body,
                             ...)
        
        if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
            returnObject <- QueryResult$new()
            result <- returnObject$fromJSONString(httr::content(resp, "text", encoding = "UTF-8"))
            Response$new(returnObject, resp)
        } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
            Response$new("API client error", resp)
        } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
            Response$new("API server error", resp)
        }    
    }
  )
)

