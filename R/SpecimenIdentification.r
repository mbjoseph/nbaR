# Netherlands Biodiversity API
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' SpecimenIdentification Class
#'
#' @field taxonRank
#' @field scientificName
#' @field typeStatus
#' @field dateIdentified
#' @field defaultClassification
#' @field systemClassification
#' @field vernacularNames
#' @field identificationQualifiers
#' @field identifiers
#' @field taxonomicEnrichments
#' @field preferred
#' @field verificationStatus
#' @field rockType
#' @field associatedFossilAssemblage
#' @field rockMineralUsage
#' @field associatedMineralName
#' @field remarks
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SpecimenIdentification <- R6::R6Class(
  "SpecimenIdentification",
  public = list(
    `taxonRank` = NULL,
    `scientificName` = NULL,
    `typeStatus` = NULL,
    `dateIdentified` = NULL,
    `defaultClassification` = NULL,
    `systemClassification` = NULL,
    `vernacularNames` = NULL,
    `identificationQualifiers` = NULL,
    `identifiers` = NULL,
    `taxonomicEnrichments` = NULL,
    `preferred` = NULL,
    `verificationStatus` = NULL,
    `rockType` = NULL,
    `associatedFossilAssemblage` = NULL,
    `rockMineralUsage` = NULL,
    `associatedMineralName` = NULL,
    `remarks` = NULL,
    initialize = function(
                              `taxonRank`,
                              `scientificName`,
                              `typeStatus`,
                              `dateIdentified`,
                              `defaultClassification`,
                              `systemClassification`,
                              `vernacularNames`,
                              `identificationQualifiers`,
                              `identifiers`,
                              `taxonomicEnrichments`,
                              `preferred`,
                              `verificationStatus`,
                              `rockType`,
                              `associatedFossilAssemblage`,
                              `rockMineralUsage`,
                              `associatedMineralName`,
                              `remarks`) {
      if (!missing(`taxonRank`)) {
        stopifnot(
          is.character(`taxonRank`),
          length(`taxonRank`) == 1
        )
        self[["taxonRank"]] <- `taxonRank`
      }
      if (!missing(`scientificName`)) {
        stopifnot(R6::is.R6(`scientificName`))
        self[["scientificName"]] <- `scientificName`
      }
      if (!missing(`typeStatus`)) {
        stopifnot(
          is.character(`typeStatus`),
          length(`typeStatus`) == 1
        )
        self[["typeStatus"]] <- `typeStatus`
      }
      if (!missing(`dateIdentified`)) {
        stopifnot(
          is.character(`dateIdentified`),
          length(`dateIdentified`) == 1
        )
        self[["dateIdentified"]] <- `dateIdentified`
      }
      if (!missing(`defaultClassification`)) {
        stopifnot(R6::is.R6(`defaultClassification`))
        self[["defaultClassification"]] <- `defaultClassification`
      }
      if (!missing(`systemClassification`)) {
        stopifnot(
          is.list(`systemClassification`),
          length(`systemClassification`) != 0
        )
        lapply(
          `systemClassification`,
          function(x) stopifnot(R6::is.R6(x))
        )
        self[["systemClassification"]] <- `systemClassification`
      }
      if (!missing(`vernacularNames`)) {
        stopifnot(
          is.list(`vernacularNames`),
          length(`vernacularNames`) != 0
        )
        lapply(
          `vernacularNames`,
          function(x) stopifnot(R6::is.R6(x))
        )
        self[["vernacularNames"]] <- `vernacularNames`
      }
      if (!missing(`identificationQualifiers`)) {
        stopifnot(
          is.list(`identificationQualifiers`),
          length(`identificationQualifiers`) != 0
        )
        lapply(
          `identificationQualifiers`,
          function(x) stopifnot(is.character(x))
        )
        self[["identificationQualifiers"]] <- `identificationQualifiers`
      }
      if (!missing(`identifiers`)) {
        stopifnot(
          is.list(`identifiers`),
          length(`identifiers`) != 0
        )
        lapply(
          `identifiers`,
          function(x) stopifnot(R6::is.R6(x))
        )
        self[["identifiers"]] <- `identifiers`
      }
      if (!missing(`taxonomicEnrichments`)) {
        stopifnot(
          is.list(`taxonomicEnrichments`),
          length(`taxonomicEnrichments`) != 0
        )
        lapply(
          `taxonomicEnrichments`,
          function(x) stopifnot(R6::is.R6(x))
        )
        self[["taxonomicEnrichments"]] <- `taxonomicEnrichments`
      }
      if (!missing(`preferred`)) {
        self[["preferred"]] <- `preferred`
      }
      if (!missing(`verificationStatus`)) {
        stopifnot(
          is.character(`verificationStatus`),
          length(`verificationStatus`) == 1
        )
        self[["verificationStatus"]] <- `verificationStatus`
      }
      if (!missing(`rockType`)) {
        stopifnot(
          is.character(`rockType`),
          length(`rockType`) == 1
        )
        self[["rockType"]] <- `rockType`
      }
      if (!missing(`associatedFossilAssemblage`)) {
        stopifnot(
          is.character(`associatedFossilAssemblage`),
          length(`associatedFossilAssemblage`) == 1
        )
        self[["associatedFossilAssemblage"]] <- `associatedFossilAssemblage`
      }
      if (!missing(`rockMineralUsage`)) {
        stopifnot(
          is.character(`rockMineralUsage`),
          length(`rockMineralUsage`) == 1
        )
        self[["rockMineralUsage"]] <- `rockMineralUsage`
      }
      if (!missing(`associatedMineralName`)) {
        stopifnot(
          is.character(`associatedMineralName`),
          length(`associatedMineralName`) == 1
        )
        self[["associatedMineralName"]] <- `associatedMineralName`
      }
      if (!missing(`remarks`)) {
        stopifnot(
          is.character(`remarks`),
          length(`remarks`) == 1
        )
        self[["remarks"]] <- `remarks`
      }
    },
    toList = function() {
      SpecimenIdentificationList <- list()
      if (!is.null(self[["taxonRank"]])) {
        SpecimenIdentificationList[["taxonRank"]] <-
          self[["taxonRank"]]
      }
      if (!is.null(self[["scientificName"]])) {
        SpecimenIdentificationList[["scientificName"]] <-
          self[["scientificName"]]$toList()
      }
      if (!is.null(self[["typeStatus"]])) {
        SpecimenIdentificationList[["typeStatus"]] <-
          self[["typeStatus"]]
      }
      if (!is.null(self[["dateIdentified"]])) {
        SpecimenIdentificationList[["dateIdentified"]] <-
          self[["dateIdentified"]]
      }
      if (!is.null(self[["defaultClassification"]])) {
        SpecimenIdentificationList[["defaultClassification"]] <-
          self[["defaultClassification"]]$toList()
      }
      if (!is.null(self[["systemClassification"]])) {
        SpecimenIdentificationList[["systemClassification"]] <-
          lapply(self[["systemClassification"]], function(x) x$toList())
      }
      if (!is.null(self[["vernacularNames"]])) {
        SpecimenIdentificationList[["vernacularNames"]] <-
          lapply(self[["vernacularNames"]], function(x) x$toList())
      }
      if (!is.null(self[["identificationQualifiers"]])) {
        SpecimenIdentificationList[["identificationQualifiers"]] <-
          self[["identificationQualifiers"]]
      }
      if (!is.null(self[["identifiers"]])) {
        SpecimenIdentificationList[["identifiers"]] <-
          lapply(self[["identifiers"]], function(x) x$toList())
      }
      if (!is.null(self[["taxonomicEnrichments"]])) {
        SpecimenIdentificationList[["taxonomicEnrichments"]] <-
          lapply(self[["taxonomicEnrichments"]], function(x) x$toList())
      }
      if (!is.null(self[["preferred"]])) {
        SpecimenIdentificationList[["preferred"]] <-
          self[["preferred"]]
      }
      if (!is.null(self[["verificationStatus"]])) {
        SpecimenIdentificationList[["verificationStatus"]] <-
          self[["verificationStatus"]]
      }
      if (!is.null(self[["rockType"]])) {
        SpecimenIdentificationList[["rockType"]] <-
          self[["rockType"]]
      }
      if (!is.null(self[["associatedFossilAssemblage"]])) {
        SpecimenIdentificationList[["associatedFossilAssemblage"]] <-
          self[["associatedFossilAssemblage"]]
      }
      if (!is.null(self[["rockMineralUsage"]])) {
        SpecimenIdentificationList[["rockMineralUsage"]] <-
          self[["rockMineralUsage"]]
      }
      if (!is.null(self[["associatedMineralName"]])) {
        SpecimenIdentificationList[["associatedMineralName"]] <-
          self[["associatedMineralName"]]
      }
      if (!is.null(self[["remarks"]])) {
        SpecimenIdentificationList[["remarks"]] <-
          self[["remarks"]]
      }
      ## omit empty nested lists in returned list
      SpecimenIdentificationList[vapply(
        SpecimenIdentificationList,
        length,
        FUN.VALUE = integer(1)
      ) > 0]
    },
    fromList = function(SpecimenIdentificationList,
                            typeMapping = NULL) {
      self[["taxonRank"]] <-
        SpecimenIdentificationList[["taxonRank"]]
      self[["scientificName"]] <- ScientificName$new()$fromList(
        SpecimenIdentificationList[["scientificName"]],
        typeMapping = typeMapping
      )
      self[["typeStatus"]] <-
        SpecimenIdentificationList[["typeStatus"]]
      self[["dateIdentified"]] <-
        SpecimenIdentificationList[["dateIdentified"]]
      self[["defaultClassification"]] <- DefaultClassification$new()$fromList(
        SpecimenIdentificationList[["defaultClassification"]],
        typeMapping = typeMapping
      )
      self[["systemClassification"]] <- lapply(
        SpecimenIdentificationList[["systemClassification"]],
        function(x) {
          Monomial$new()$fromList(x,
            typeMapping = typeMapping
          )
        }
      )
      self[["vernacularNames"]] <- lapply(
        SpecimenIdentificationList[["vernacularNames"]],
        function(x) {
          VernacularName$new()$fromList(x,
            typeMapping = typeMapping
          )
        }
      )
      self[["identificationQualifiers"]] <-
        SpecimenIdentificationList[["identificationQualifiers"]]
      self[["identifiers"]] <- lapply(
        SpecimenIdentificationList[["identifiers"]],
        function(x) {
          Agent$new()$fromList(x,
            typeMapping = typeMapping
          )
        }
      )
      self[["taxonomicEnrichments"]] <- lapply(
        SpecimenIdentificationList[["taxonomicEnrichments"]],
        function(x) {
          TaxonomicEnrichment$new()$fromList(x,
            typeMapping = typeMapping
          )
        }
      )
      self[["preferred"]] <-
        SpecimenIdentificationList[["preferred"]]
      self[["verificationStatus"]] <-
        SpecimenIdentificationList[["verificationStatus"]]
      self[["rockType"]] <-
        SpecimenIdentificationList[["rockType"]]
      self[["associatedFossilAssemblage"]] <-
        SpecimenIdentificationList[["associatedFossilAssemblage"]]
      self[["rockMineralUsage"]] <-
        SpecimenIdentificationList[["rockMineralUsage"]]
      self[["associatedMineralName"]] <-
        SpecimenIdentificationList[["associatedMineralName"]]
      self[["remarks"]] <-
        SpecimenIdentificationList[["remarks"]]
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
    fromJSONString = function(SpecimenIdentificationJson,
                                  typeMapping = NULL) {
      SpecimenIdentificationList <- jsonlite::fromJSON(
        SpecimenIdentificationJson,
        simplifyVector = FALSE
      )
      if (is.null(typeMapping[["taxonRank"]])) {
        self[["taxonRank"]] <-
          SpecimenIdentificationList[["taxonRank"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["taxonRank"]], "$new()")
        ))
        self[["taxonRank"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            SpecimenIdentificationList[["taxonRank"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["scientificName"]])) {
        self[["scientificName"]] <-
          ScientificName$new()$fromJSONString(
            jsonlite::toJSON(
              SpecimenIdentificationList[["scientificName"]],
              auto_unbox = TRUE
            ),
            typeMapping = typeMapping
          )
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["scientificName"]], "$new()")
        ))
        self[["scientificName"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            SpecimenIdentificationList[["scientificName"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["typeStatus"]])) {
        self[["typeStatus"]] <-
          SpecimenIdentificationList[["typeStatus"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["typeStatus"]], "$new()")
        ))
        self[["typeStatus"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            SpecimenIdentificationList[["typeStatus"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["dateIdentified"]])) {
        self[["dateIdentified"]] <-
          SpecimenIdentificationList[["dateIdentified"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["dateIdentified"]], "$new()")
        ))
        self[["dateIdentified"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            SpecimenIdentificationList[["dateIdentified"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["defaultClassification"]])) {
        self[["defaultClassification"]] <-
          DefaultClassification$new()$fromJSONString(
            jsonlite::toJSON(
              SpecimenIdentificationList[["defaultClassification"]],
              auto_unbox = TRUE
            ),
            typeMapping = typeMapping
          )
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["defaultClassification"]], "$new()")
        ))
        self[["defaultClassification"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            SpecimenIdentificationList[["defaultClassification"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      self[["systemClassification"]] <- lapply(
        SpecimenIdentificationList[["systemClassification"]],
        function(x) {
          Monomial$new()$fromJSONString(
            jsonlite::toJSON(
              x,
              auto_unbox = TRUE
            ),
            typeMapping = typeMapping
          )
        }
      )
      self[["vernacularNames"]] <- lapply(
        SpecimenIdentificationList[["vernacularNames"]],
        function(x) {
          VernacularName$new()$fromJSONString(
            jsonlite::toJSON(
              x,
              auto_unbox = TRUE
            ),
            typeMapping = typeMapping
          )
        }
      )
      if (is.null(typeMapping[["identificationQualifiers"]])) {
        self[["identificationQualifiers"]] <-
          SpecimenIdentificationList[["identificationQualifiers"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["identificationQualifiers"]], "$new()")
        ))
        self[["identificationQualifiers"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            SpecimenIdentificationList[["identificationQualifiers"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      self[["identifiers"]] <- lapply(
        SpecimenIdentificationList[["identifiers"]],
        function(x) {
          Agent$new()$fromJSONString(
            jsonlite::toJSON(
              x,
              auto_unbox = TRUE
            ),
            typeMapping = typeMapping
          )
        }
      )
      self[["taxonomicEnrichments"]] <- lapply(
        SpecimenIdentificationList[["taxonomicEnrichments"]],
        function(x) {
          TaxonomicEnrichment$new()$fromJSONString(
            jsonlite::toJSON(
              x,
              auto_unbox = TRUE
            ),
            typeMapping = typeMapping
          )
        }
      )
      if (is.null(typeMapping[["preferred"]])) {
        self[["preferred"]] <-
          SpecimenIdentificationList[["preferred"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["preferred"]], "$new()")
        ))
        self[["preferred"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            SpecimenIdentificationList[["preferred"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["verificationStatus"]])) {
        self[["verificationStatus"]] <-
          SpecimenIdentificationList[["verificationStatus"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["verificationStatus"]], "$new()")
        ))
        self[["verificationStatus"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            SpecimenIdentificationList[["verificationStatus"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["rockType"]])) {
        self[["rockType"]] <-
          SpecimenIdentificationList[["rockType"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["rockType"]], "$new()")
        ))
        self[["rockType"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            SpecimenIdentificationList[["rockType"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["associatedFossilAssemblage"]])) {
        self[["associatedFossilAssemblage"]] <-
          SpecimenIdentificationList[["associatedFossilAssemblage"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["associatedFossilAssemblage"]], "$new()")
        ))
        self[["associatedFossilAssemblage"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            SpecimenIdentificationList[["associatedFossilAssemblage"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["rockMineralUsage"]])) {
        self[["rockMineralUsage"]] <-
          SpecimenIdentificationList[["rockMineralUsage"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["rockMineralUsage"]], "$new()")
        ))
        self[["rockMineralUsage"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            SpecimenIdentificationList[["rockMineralUsage"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["associatedMineralName"]])) {
        self[["associatedMineralName"]] <-
          SpecimenIdentificationList[["associatedMineralName"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["associatedMineralName"]], "$new()")
        ))
        self[["associatedMineralName"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            SpecimenIdentificationList[["associatedMineralName"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      if (is.null(typeMapping[["remarks"]])) {
        self[["remarks"]] <-
          SpecimenIdentificationList[["remarks"]]
      } else {
        obj <- eval(parse(
          text = paste0(typeMapping[["remarks"]], "$new()")
        ))
        self[["remarks"]] <- obj$fromJSONString(
          jsonlite::toJSON(
            SpecimenIdentificationList[["remarks"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      }
      invisible(self)
    }
  )
)
