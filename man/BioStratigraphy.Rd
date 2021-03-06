% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/BioStratigraphy.r
\docType{data}
\name{BioStratigraphy}
\alias{BioStratigraphy}
\title{BioStratigraphy Class}
\format{An object of class \code{R6ClassGenerator} of length 24.}
\usage{
BioStratigraphy
}
\description{
BioStratigraphy Class
}
\section{Fields}{

\describe{
\item{\code{youngBioDatingQualifier}}{character}

\item{\code{youngBioName}}{character}

\item{\code{youngFossilZone}}{character}

\item{\code{youngFossilSubZone}}{character}

\item{\code{youngBioCertainty}}{character}

\item{\code{youngStratType}}{character}

\item{\code{bioDatingQualifier}}{character}

\item{\code{bioPreferredFlag}}{logical}

\item{\code{rangePosition}}{character}

\item{\code{oldBioName}}{character}

\item{\code{bioIdentifier}}{character}

\item{\code{oldFossilzone}}{character}

\item{\code{oldFossilSubzone}}{character}

\item{\code{oldBioCertainty}}{character}

\item{\code{oldBioStratType}}{character}
}}

\section{Methods}{

\describe{

\item{\code{$new()}}{

  Constructor BioStratigraphy object.

}
\item{\code{$fromList(BioStratigraphyList)}}{

  Create BioStratigraphy object from list.

}

\item{\code{$toList()}}{

  Get list representation of BioStratigraphy.

}
\item{\code{fromJSONString(BioStratigraphyJson)}}{

  Create BioStratigraphy object from list.

}
\item{\code{toJSONString(pretty=TRUE)}}{

  Get JSON representation of BioStratigraphy.

}
}
}

\keyword{datasets}
