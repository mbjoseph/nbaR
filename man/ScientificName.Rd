% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ScientificName.r
\docType{data}
\name{ScientificName}
\alias{ScientificName}
\title{ScientificName Class}
\format{An object of class \code{R6ClassGenerator} of length 24.}
\usage{
ScientificName
}
\description{
ScientificName Class
}
\section{Fields}{

\describe{
\item{\code{fullScientificName}}{character}

\item{\code{taxonomicStatus}}{character}

\item{\code{genusOrMonomial}}{character}

\item{\code{subgenus}}{character}

\item{\code{specificEpithet}}{character}

\item{\code{infraspecificEpithet}}{character}

\item{\code{infraspecificMarker}}{character}

\item{\code{nameAddendum}}{character}

\item{\code{authorshipVerbatim}}{character}

\item{\code{author}}{character}

\item{\code{year}}{character}

\item{\code{scientificNameGroup}}{character}

\item{\code{references}}{list(Reference)}

\item{\code{experts}}{list(Expert)}
}}

\section{Methods}{

\describe{

\item{\code{$new()}}{

  Constructor ScientificName object.

}
\item{\code{$fromList(ScientificNameList)}}{

  Create ScientificName object from list.

}

\item{\code{$toList()}}{

  Get list representation of ScientificName.

}
\item{\code{fromJSONString(ScientificNameJson)}}{

  Create ScientificName object from list.

}
\item{\code{toJSONString(pretty=TRUE)}}{

  Get JSON representation of ScientificName.

}
}
}

\keyword{datasets}
