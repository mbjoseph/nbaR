# Netherlands Biodiversity API
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' Agent Class
#'
#'
#'
#' @field agentText  character
#'
#' @section Methods:
#' \describe{
#'
#' \item{\code{$new()}}{
#'
#'   Constructor Agent object.
#'
#' }
#' \item{\code{$fromList(AgentList)}}{
#'
#'   Create Agent object from list.
#'
#' }
#'
#' \item{\code{$toList()}}{
#'
#'   Get list representation of Agent.
#'
#' }
#' \item{\code{fromJSONString(AgentJson)}}{
#'
#'   Create Agent object from list.
#'
#' }
#' \item{\code{toJSONString(pretty=TRUE)}}{
#'
#'   Get JSON representation of Agent.
#'
#' }
#' }
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Agent <- R6::R6Class(
  "Agent",
  public = list(
    `agentText` = NULL,
    initialize = function(
                              `agentText`) {
      if (!missing(`agentText`)) {
        stopifnot(
          is.character(`agentText`),
          length(`agentText`) == 1
        )
        self[["agentText"]] <- `agentText`
      }
    },
    toList = function() {
      AgentList <- list()
      if (!is.null(self[["agentText"]])) {
        AgentList[["agentText"]] <-
          self[["agentText"]]
      }
      ## omit empty nested lists in returned list
      AgentList[vapply(
        AgentList,
        length,
        FUN.VALUE = integer(1)
      ) > 0]
    },
    fromList = function(AgentList,
                            typeMapping = NULL) {
      self[["agentText"]] <-
        AgentList[["agentText"]]
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
    fromJSONString = function(AgentJson,
                                  typeMapping = NULL) {
      AgentList <- jsonlite::fromJSON(
        AgentJson,
        simplifyVector = FALSE
      )
      self[["agentText"]] <-
        AgentList[["agentText"]]
      invisible(self)
    }
  )
)
