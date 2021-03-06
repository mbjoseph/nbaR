% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MultiMediaObject.r
\docType{data}
\name{MultiMediaObject}
\alias{MultiMediaObject}
\title{MultiMediaObject Class}
\format{An object of class \code{R6ClassGenerator} of length 24.}
\usage{
MultiMediaObject
}
\description{
MultiMediaObject Class
}
\section{Fields}{

\describe{
\item{\code{sourceSystem}}{SourceSystem}

\item{\code{sourceSystemId}}{character}

\item{\code{recordURI}}{character}

\item{\code{id}}{character}

\item{\code{sourceInstitutionID}}{character}

\item{\code{sourceID}}{character}

\item{\code{owner}}{character}

\item{\code{licenseType}}{character}

\item{\code{license}}{character}

\item{\code{unitID}}{character}

\item{\code{collectionType}}{character}

\item{\code{title}}{character}

\item{\code{caption}}{character}

\item{\code{description}}{character}

\item{\code{serviceAccessPoints}}{list(ServiceAccessPoint)}

\item{\code{type}}{character}

\item{\code{taxonCount}}{integer}

\item{\code{creator}}{character}

\item{\code{copyrightText}}{character}

\item{\code{associatedSpecimenReference}}{character}

\item{\code{associatedTaxonReference}}{character}

\item{\code{multiMediaPublic}}{logical}

\item{\code{subjectParts}}{list(character)}

\item{\code{subjectOrientations}}{list(character)}

\item{\code{phasesOrStages}}{list(character)}

\item{\code{sexes}}{list(character)}

\item{\code{gatheringEvents}}{list(MultiMediaGatheringEvent)}

\item{\code{identifications}}{list(MultiMediaContentIdentification)}

\item{\code{theme}}{list(character)}

\item{\code{associatedSpecimen}}{Specimen}

\item{\code{associatedTaxon}}{Taxon}
}}

\section{Methods}{

\describe{

\item{\code{$new()}}{

  Constructor MultiMediaObject object.

}
\item{\code{$fromList(MultiMediaObjectList)}}{

  Create MultiMediaObject object from list.

}

\item{\code{$toList()}}{

  Get list representation of MultiMediaObject.

}
\item{\code{fromJSONString(MultiMediaObjectJson)}}{

  Create MultiMediaObject object from list.

}
\item{\code{toJSONString(pretty=TRUE)}}{

  Get JSON representation of MultiMediaObject.

}
}
}

\keyword{datasets}
