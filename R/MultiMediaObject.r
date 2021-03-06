# Netherlands Biodiversity API
#
# Access to the digitised Natural History collection at the Naturalis Biodiversity Center
#
# OpenAPI spec version: v2
# Contact: support@naturalis.nl
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' MultiMediaObject Class
#'
#'
#'
#' @field sourceSystem  SourceSystem
#' @field sourceSystemId  character
#' @field recordURI  character
#' @field id  character
#' @field sourceInstitutionID  character
#' @field sourceID  character
#' @field owner  character
#' @field licenseType  character
#' @field license  character
#' @field unitID  character
#' @field collectionType  character
#' @field title  character
#' @field caption  character
#' @field description  character
#' @field serviceAccessPoints  list(ServiceAccessPoint)
#' @field type  character
#' @field taxonCount  integer
#' @field creator  character
#' @field copyrightText  character
#' @field associatedSpecimenReference  character
#' @field associatedTaxonReference  character
#' @field multiMediaPublic  logical
#' @field subjectParts  list(character)
#' @field subjectOrientations  list(character)
#' @field phasesOrStages  list(character)
#' @field sexes  list(character)
#' @field gatheringEvents  list(MultiMediaGatheringEvent)
#' @field identifications  list(MultiMediaContentIdentification)
#' @field theme  list(character)
#' @field associatedSpecimen  Specimen
#' @field associatedTaxon  Taxon
#'
#' @section Methods:
#' \describe{
#'
#' \item{\code{$new()}}{
#'
#'   Constructor MultiMediaObject object.
#'
#' }
#' \item{\code{$fromList(MultiMediaObjectList)}}{
#'
#'   Create MultiMediaObject object from list.
#'
#' }
#'
#' \item{\code{$toList()}}{
#'
#'   Get list representation of MultiMediaObject.
#'
#' }
#' \item{\code{fromJSONString(MultiMediaObjectJson)}}{
#'
#'   Create MultiMediaObject object from list.
#'
#' }
#' \item{\code{toJSONString(pretty=TRUE)}}{
#'
#'   Get JSON representation of MultiMediaObject.
#'
#' }
#' }
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MultiMediaObject <- R6::R6Class(
  "MultiMediaObject",
  public = list(
    `sourceSystem` = NULL,
    `sourceSystemId` = NULL,
    `recordURI` = NULL,
    `id` = NULL,
    `sourceInstitutionID` = NULL,
    `sourceID` = NULL,
    `owner` = NULL,
    `licenseType` = NULL,
    `license` = NULL,
    `unitID` = NULL,
    `collectionType` = NULL,
    `title` = NULL,
    `caption` = NULL,
    `description` = NULL,
    `serviceAccessPoints` = NULL,
    `type` = NULL,
    `taxonCount` = NULL,
    `creator` = NULL,
    `copyrightText` = NULL,
    `associatedSpecimenReference` = NULL,
    `associatedTaxonReference` = NULL,
    `multiMediaPublic` = NULL,
    `subjectParts` = NULL,
    `subjectOrientations` = NULL,
    `phasesOrStages` = NULL,
    `sexes` = NULL,
    `gatheringEvents` = NULL,
    `identifications` = NULL,
    `theme` = NULL,
    `associatedSpecimen` = NULL,
    `associatedTaxon` = NULL,
    initialize = function(
                              `sourceSystem`,
                              `sourceSystemId`,
                              `recordURI`,
                              `id`,
                              `sourceInstitutionID`,
                              `sourceID`,
                              `owner`,
                              `licenseType`,
                              `license`,
                              `unitID`,
                              `collectionType`,
                              `title`,
                              `caption`,
                              `description`,
                              `serviceAccessPoints`,
                              `type`,
                              `taxonCount`,
                              `creator`,
                              `copyrightText`,
                              `associatedSpecimenReference`,
                              `associatedTaxonReference`,
                              `multiMediaPublic`,
                              `subjectParts`,
                              `subjectOrientations`,
                              `phasesOrStages`,
                              `sexes`,
                              `gatheringEvents`,
                              `identifications`,
                              `theme`,
                              `associatedSpecimen`,
                              `associatedTaxon`) {
      if (!missing(`sourceSystem`)) {
        stopifnot(R6::is.R6(`sourceSystem`))
        self[["sourceSystem"]] <- `sourceSystem`
      }
      if (!missing(`sourceSystemId`)) {
        stopifnot(
          is.character(`sourceSystemId`),
          length(`sourceSystemId`) == 1
        )
        self[["sourceSystemId"]] <- `sourceSystemId`
      }
      if (!missing(`recordURI`)) {
        stopifnot(
          is.character(`recordURI`),
          length(`recordURI`) == 1
        )
        self[["recordURI"]] <- `recordURI`
      }
      if (!missing(`id`)) {
        stopifnot(
          is.character(`id`),
          length(`id`) == 1
        )
        self[["id"]] <- `id`
      }
      if (!missing(`sourceInstitutionID`)) {
        stopifnot(
          is.character(`sourceInstitutionID`),
          length(`sourceInstitutionID`) == 1
        )
        self[["sourceInstitutionID"]] <- `sourceInstitutionID`
      }
      if (!missing(`sourceID`)) {
        stopifnot(
          is.character(`sourceID`),
          length(`sourceID`) == 1
        )
        self[["sourceID"]] <- `sourceID`
      }
      if (!missing(`owner`)) {
        stopifnot(
          is.character(`owner`),
          length(`owner`) == 1
        )
        self[["owner"]] <- `owner`
      }
      if (!missing(`licenseType`)) {
        stopifnot(
          is.character(`licenseType`),
          length(`licenseType`) == 1
        )
        self[["licenseType"]] <- `licenseType`
      }
      if (!missing(`license`)) {
        stopifnot(
          is.character(`license`),
          length(`license`) == 1
        )
        self[["license"]] <- `license`
      }
      if (!missing(`unitID`)) {
        stopifnot(
          is.character(`unitID`),
          length(`unitID`) == 1
        )
        self[["unitID"]] <- `unitID`
      }
      if (!missing(`collectionType`)) {
        stopifnot(
          is.character(`collectionType`),
          length(`collectionType`) == 1
        )
        self[["collectionType"]] <- `collectionType`
      }
      if (!missing(`title`)) {
        stopifnot(
          is.character(`title`),
          length(`title`) == 1
        )
        self[["title"]] <- `title`
      }
      if (!missing(`caption`)) {
        stopifnot(
          is.character(`caption`),
          length(`caption`) == 1
        )
        self[["caption"]] <- `caption`
      }
      if (!missing(`description`)) {
        stopifnot(
          is.character(`description`),
          length(`description`) == 1
        )
        self[["description"]] <- `description`
      }
      if (!missing(`serviceAccessPoints`)) {
        stopifnot(
          is.list(`serviceAccessPoints`),
          length(`serviceAccessPoints`) != 0
        )
        lapply(
          `serviceAccessPoints`,
          function(x) stopifnot(R6::is.R6(x))
        )
        self[["serviceAccessPoints"]] <- `serviceAccessPoints`
      }
      if (!missing(`type`)) {
        stopifnot(
          is.character(`type`),
          length(`type`) == 1
        )
        self[["type"]] <- `type`
      }
      if (!missing(`taxonCount`)) {
        stopifnot(
          is.numeric(`taxonCount`),
          length(`taxonCount`) == 1
        )
        self[["taxonCount"]] <- `taxonCount`
      }
      if (!missing(`creator`)) {
        stopifnot(
          is.character(`creator`),
          length(`creator`) == 1
        )
        self[["creator"]] <- `creator`
      }
      if (!missing(`copyrightText`)) {
        stopifnot(
          is.character(`copyrightText`),
          length(`copyrightText`) == 1
        )
        self[["copyrightText"]] <- `copyrightText`
      }
      if (!missing(`associatedSpecimenReference`)) {
        stopifnot(
          is.character(`associatedSpecimenReference`),
          length(`associatedSpecimenReference`) == 1
        )
        self[["associatedSpecimenReference"]] <- `associatedSpecimenReference`
      }
      if (!missing(`associatedTaxonReference`)) {
        stopifnot(
          is.character(`associatedTaxonReference`),
          length(`associatedTaxonReference`) == 1
        )
        self[["associatedTaxonReference"]] <- `associatedTaxonReference`
      }
      if (!missing(`multiMediaPublic`)) {
        self[["multiMediaPublic"]] <- `multiMediaPublic`
      }
      if (!missing(`subjectParts`)) {
        stopifnot(
          is.list(`subjectParts`),
          length(`subjectParts`) != 0
        )
        lapply(
          `subjectParts`,
          function(x) stopifnot(is.character(x))
        )
        self[["subjectParts"]] <- `subjectParts`
      }
      if (!missing(`subjectOrientations`)) {
        stopifnot(
          is.list(`subjectOrientations`),
          length(`subjectOrientations`) != 0
        )
        lapply(
          `subjectOrientations`,
          function(x) stopifnot(is.character(x))
        )
        self[["subjectOrientations"]] <- `subjectOrientations`
      }
      if (!missing(`phasesOrStages`)) {
        stopifnot(
          is.list(`phasesOrStages`),
          length(`phasesOrStages`) != 0
        )
        lapply(
          `phasesOrStages`,
          function(x) stopifnot(is.character(x))
        )
        self[["phasesOrStages"]] <- `phasesOrStages`
      }
      if (!missing(`sexes`)) {
        stopifnot(
          is.list(`sexes`),
          length(`sexes`) != 0
        )
        lapply(
          `sexes`,
          function(x) stopifnot(is.character(x))
        )
        self[["sexes"]] <- `sexes`
      }
      if (!missing(`gatheringEvents`)) {
        stopifnot(
          is.list(`gatheringEvents`),
          length(`gatheringEvents`) != 0
        )
        lapply(
          `gatheringEvents`,
          function(x) stopifnot(R6::is.R6(x))
        )
        self[["gatheringEvents"]] <- `gatheringEvents`
      }
      if (!missing(`identifications`)) {
        stopifnot(
          is.list(`identifications`),
          length(`identifications`) != 0
        )
        lapply(
          `identifications`,
          function(x) stopifnot(R6::is.R6(x))
        )
        self[["identifications"]] <- `identifications`
      }
      if (!missing(`theme`)) {
        stopifnot(
          is.list(`theme`),
          length(`theme`) != 0
        )
        lapply(
          `theme`,
          function(x) stopifnot(is.character(x))
        )
        self[["theme"]] <- `theme`
      }
      if (!missing(`associatedSpecimen`)) {
        stopifnot(R6::is.R6(`associatedSpecimen`))
        self[["associatedSpecimen"]] <- `associatedSpecimen`
      }
      if (!missing(`associatedTaxon`)) {
        stopifnot(R6::is.R6(`associatedTaxon`))
        self[["associatedTaxon"]] <- `associatedTaxon`
      }
    },
    toList = function() {
      MultiMediaObjectList <- list()
      if (!is.null(self[["sourceSystem"]])) {
        MultiMediaObjectList[["sourceSystem"]] <-
          self[["sourceSystem"]]$toList()
      }
      if (!is.null(self[["sourceSystemId"]])) {
        MultiMediaObjectList[["sourceSystemId"]] <-
          self[["sourceSystemId"]]
      }
      if (!is.null(self[["recordURI"]])) {
        MultiMediaObjectList[["recordURI"]] <-
          self[["recordURI"]]
      }
      if (!is.null(self[["id"]])) {
        MultiMediaObjectList[["id"]] <-
          self[["id"]]
      }
      if (!is.null(self[["sourceInstitutionID"]])) {
        MultiMediaObjectList[["sourceInstitutionID"]] <-
          self[["sourceInstitutionID"]]
      }
      if (!is.null(self[["sourceID"]])) {
        MultiMediaObjectList[["sourceID"]] <-
          self[["sourceID"]]
      }
      if (!is.null(self[["owner"]])) {
        MultiMediaObjectList[["owner"]] <-
          self[["owner"]]
      }
      if (!is.null(self[["licenseType"]])) {
        MultiMediaObjectList[["licenseType"]] <-
          self[["licenseType"]]
      }
      if (!is.null(self[["license"]])) {
        MultiMediaObjectList[["license"]] <-
          self[["license"]]
      }
      if (!is.null(self[["unitID"]])) {
        MultiMediaObjectList[["unitID"]] <-
          self[["unitID"]]
      }
      if (!is.null(self[["collectionType"]])) {
        MultiMediaObjectList[["collectionType"]] <-
          self[["collectionType"]]
      }
      if (!is.null(self[["title"]])) {
        MultiMediaObjectList[["title"]] <-
          self[["title"]]
      }
      if (!is.null(self[["caption"]])) {
        MultiMediaObjectList[["caption"]] <-
          self[["caption"]]
      }
      if (!is.null(self[["description"]])) {
        MultiMediaObjectList[["description"]] <-
          self[["description"]]
      }
      if (!is.null(self[["serviceAccessPoints"]])) {
        MultiMediaObjectList[["serviceAccessPoints"]] <-
          lapply(self[["serviceAccessPoints"]], function(x) x$toList())
      }
      if (!is.null(self[["type"]])) {
        MultiMediaObjectList[["type"]] <-
          self[["type"]]
      }
      if (!is.null(self[["taxonCount"]])) {
        MultiMediaObjectList[["taxonCount"]] <-
          self[["taxonCount"]]
      }
      if (!is.null(self[["creator"]])) {
        MultiMediaObjectList[["creator"]] <-
          self[["creator"]]
      }
      if (!is.null(self[["copyrightText"]])) {
        MultiMediaObjectList[["copyrightText"]] <-
          self[["copyrightText"]]
      }
      if (!is.null(self[["associatedSpecimenReference"]])) {
        MultiMediaObjectList[["associatedSpecimenReference"]] <-
          self[["associatedSpecimenReference"]]
      }
      if (!is.null(self[["associatedTaxonReference"]])) {
        MultiMediaObjectList[["associatedTaxonReference"]] <-
          self[["associatedTaxonReference"]]
      }
      if (!is.null(self[["multiMediaPublic"]])) {
        MultiMediaObjectList[["multiMediaPublic"]] <-
          self[["multiMediaPublic"]]
      }
      if (!is.null(self[["subjectParts"]])) {
        MultiMediaObjectList[["subjectParts"]] <-
          self[["subjectParts"]]
      }
      if (!is.null(self[["subjectOrientations"]])) {
        MultiMediaObjectList[["subjectOrientations"]] <-
          self[["subjectOrientations"]]
      }
      if (!is.null(self[["phasesOrStages"]])) {
        MultiMediaObjectList[["phasesOrStages"]] <-
          self[["phasesOrStages"]]
      }
      if (!is.null(self[["sexes"]])) {
        MultiMediaObjectList[["sexes"]] <-
          self[["sexes"]]
      }
      if (!is.null(self[["gatheringEvents"]])) {
        MultiMediaObjectList[["gatheringEvents"]] <-
          lapply(self[["gatheringEvents"]], function(x) x$toList())
      }
      if (!is.null(self[["identifications"]])) {
        MultiMediaObjectList[["identifications"]] <-
          lapply(self[["identifications"]], function(x) x$toList())
      }
      if (!is.null(self[["theme"]])) {
        MultiMediaObjectList[["theme"]] <-
          self[["theme"]]
      }
      if (!is.null(self[["associatedSpecimen"]])) {
        MultiMediaObjectList[["associatedSpecimen"]] <-
          self[["associatedSpecimen"]]$toList()
      }
      if (!is.null(self[["associatedTaxon"]])) {
        MultiMediaObjectList[["associatedTaxon"]] <-
          self[["associatedTaxon"]]$toList()
      }
      ## omit empty nested lists in returned list
      MultiMediaObjectList[vapply(
        MultiMediaObjectList,
        length,
        FUN.VALUE = integer(1)
      ) > 0]
    },
    fromList = function(MultiMediaObjectList,
                            typeMapping = NULL) {
      self[["sourceSystem"]] <- SourceSystem$new()$fromList(
        MultiMediaObjectList[["sourceSystem"]],
        typeMapping = typeMapping
      )
      self[["sourceSystemId"]] <-
        MultiMediaObjectList[["sourceSystemId"]]
      self[["recordURI"]] <-
        MultiMediaObjectList[["recordURI"]]
      self[["id"]] <-
        MultiMediaObjectList[["id"]]
      self[["sourceInstitutionID"]] <-
        MultiMediaObjectList[["sourceInstitutionID"]]
      self[["sourceID"]] <-
        MultiMediaObjectList[["sourceID"]]
      self[["owner"]] <-
        MultiMediaObjectList[["owner"]]
      self[["licenseType"]] <-
        MultiMediaObjectList[["licenseType"]]
      self[["license"]] <-
        MultiMediaObjectList[["license"]]
      self[["unitID"]] <-
        MultiMediaObjectList[["unitID"]]
      self[["collectionType"]] <-
        MultiMediaObjectList[["collectionType"]]
      self[["title"]] <-
        MultiMediaObjectList[["title"]]
      self[["caption"]] <-
        MultiMediaObjectList[["caption"]]
      self[["description"]] <-
        MultiMediaObjectList[["description"]]
      self[["serviceAccessPoints"]] <- lapply(
        MultiMediaObjectList[["serviceAccessPoints"]],
        function(x) {
          ServiceAccessPoint$new()$fromList(x,
            typeMapping = typeMapping
          )
        }
      )
      self[["type"]] <-
        MultiMediaObjectList[["type"]]
      self[["taxonCount"]] <-
        MultiMediaObjectList[["taxonCount"]]
      self[["creator"]] <-
        MultiMediaObjectList[["creator"]]
      self[["copyrightText"]] <-
        MultiMediaObjectList[["copyrightText"]]
      self[["associatedSpecimenReference"]] <-
        MultiMediaObjectList[["associatedSpecimenReference"]]
      self[["associatedTaxonReference"]] <-
        MultiMediaObjectList[["associatedTaxonReference"]]
      self[["multiMediaPublic"]] <-
        MultiMediaObjectList[["multiMediaPublic"]]
      self[["subjectParts"]] <-
        MultiMediaObjectList[["subjectParts"]]
      self[["subjectOrientations"]] <-
        MultiMediaObjectList[["subjectOrientations"]]
      self[["phasesOrStages"]] <-
        MultiMediaObjectList[["phasesOrStages"]]
      self[["sexes"]] <-
        MultiMediaObjectList[["sexes"]]
      self[["gatheringEvents"]] <- lapply(
        MultiMediaObjectList[["gatheringEvents"]],
        function(x) {
          MultiMediaGatheringEvent$new()$fromList(x,
            typeMapping = typeMapping
          )
        }
      )
      self[["identifications"]] <- lapply(
        MultiMediaObjectList[["identifications"]],
        function(x) {
          MultiMediaContentIdentification$new()$fromList(x,
            typeMapping = typeMapping
          )
        }
      )
      self[["theme"]] <-
        MultiMediaObjectList[["theme"]]
      self[["associatedSpecimen"]] <- Specimen$new()$fromList(
        MultiMediaObjectList[["associatedSpecimen"]],
        typeMapping = typeMapping
      )
      self[["associatedTaxon"]] <- Taxon$new()$fromList(
        MultiMediaObjectList[["associatedTaxon"]],
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
    fromJSONString = function(MultiMediaObjectJson,
                                  typeMapping = NULL) {
      MultiMediaObjectList <- jsonlite::fromJSON(
        MultiMediaObjectJson,
        simplifyVector = FALSE
      )
      self[["sourceSystem"]] <-
        SourceSystem$new()$fromJSONString(
          jsonlite::toJSON(
            MultiMediaObjectList[["sourceSystem"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      self[["sourceSystemId"]] <-
        MultiMediaObjectList[["sourceSystemId"]]
      self[["recordURI"]] <-
        MultiMediaObjectList[["recordURI"]]
      self[["id"]] <-
        MultiMediaObjectList[["id"]]
      self[["sourceInstitutionID"]] <-
        MultiMediaObjectList[["sourceInstitutionID"]]
      self[["sourceID"]] <-
        MultiMediaObjectList[["sourceID"]]
      self[["owner"]] <-
        MultiMediaObjectList[["owner"]]
      self[["licenseType"]] <-
        MultiMediaObjectList[["licenseType"]]
      self[["license"]] <-
        MultiMediaObjectList[["license"]]
      self[["unitID"]] <-
        MultiMediaObjectList[["unitID"]]
      self[["collectionType"]] <-
        MultiMediaObjectList[["collectionType"]]
      self[["title"]] <-
        MultiMediaObjectList[["title"]]
      self[["caption"]] <-
        MultiMediaObjectList[["caption"]]
      self[["description"]] <-
        MultiMediaObjectList[["description"]]
      self[["serviceAccessPoints"]] <- lapply(
        MultiMediaObjectList[["serviceAccessPoints"]],
        function(x) {
          ServiceAccessPoint$new()$fromJSONString(
            jsonlite::toJSON(
              x,
              auto_unbox = TRUE
            ),
            typeMapping = typeMapping
          )
        }
      )
      self[["type"]] <-
        MultiMediaObjectList[["type"]]
      self[["taxonCount"]] <-
        MultiMediaObjectList[["taxonCount"]]
      self[["creator"]] <-
        MultiMediaObjectList[["creator"]]
      self[["copyrightText"]] <-
        MultiMediaObjectList[["copyrightText"]]
      self[["associatedSpecimenReference"]] <-
        MultiMediaObjectList[["associatedSpecimenReference"]]
      self[["associatedTaxonReference"]] <-
        MultiMediaObjectList[["associatedTaxonReference"]]
      self[["multiMediaPublic"]] <-
        MultiMediaObjectList[["multiMediaPublic"]]
      self[["subjectParts"]] <-
        MultiMediaObjectList[["subjectParts"]]
      self[["subjectOrientations"]] <-
        MultiMediaObjectList[["subjectOrientations"]]
      self[["phasesOrStages"]] <-
        MultiMediaObjectList[["phasesOrStages"]]
      self[["sexes"]] <-
        MultiMediaObjectList[["sexes"]]
      self[["gatheringEvents"]] <- lapply(
        MultiMediaObjectList[["gatheringEvents"]],
        function(x) {
          MultiMediaGatheringEvent$new()$fromJSONString(
            jsonlite::toJSON(
              x,
              auto_unbox = TRUE
            ),
            typeMapping = typeMapping
          )
        }
      )
      self[["identifications"]] <- lapply(
        MultiMediaObjectList[["identifications"]],
        function(x) {
          MultiMediaContentIdentification$new()$fromJSONString(
            jsonlite::toJSON(
              x,
              auto_unbox = TRUE
            ),
            typeMapping = typeMapping
          )
        }
      )
      self[["theme"]] <-
        MultiMediaObjectList[["theme"]]
      self[["associatedSpecimen"]] <-
        Specimen$new()$fromJSONString(
          jsonlite::toJSON(
            MultiMediaObjectList[["associatedSpecimen"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      self[["associatedTaxon"]] <-
        Taxon$new()$fromJSONString(
          jsonlite::toJSON(
            MultiMediaObjectList[["associatedTaxon"]],
            auto_unbox = TRUE
          ),
          typeMapping = typeMapping
        )
      invisible(self)
    }
  )
)
