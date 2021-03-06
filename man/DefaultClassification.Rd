% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DefaultClassification.r
\docType{data}
\name{DefaultClassification}
\alias{DefaultClassification}
\title{DefaultClassification Class}
\format{An object of class \code{R6ClassGenerator} of length 24.}
\usage{
DefaultClassification
}
\description{
DefaultClassification Class
}
\section{Fields}{

\describe{
\item{\code{kingdom}}{character}

\item{\code{phylum}}{character}

\item{\code{className}}{character}

\item{\code{order}}{character}

\item{\code{superFamily}}{character}

\item{\code{family}}{character}

\item{\code{genus}}{character}

\item{\code{subgenus}}{character}

\item{\code{specificEpithet}}{character}

\item{\code{infraspecificEpithet}}{character}

\item{\code{infraspecificRank}}{character}
}}

\section{Methods}{

\describe{

\item{\code{$new()}}{

  Constructor DefaultClassification object.

}
\item{\code{$fromList(DefaultClassificationList)}}{

  Create DefaultClassification object from list.

}

\item{\code{$toList()}}{

  Get list representation of DefaultClassification.

}
\item{\code{fromJSONString(DefaultClassificationJson)}}{

  Create DefaultClassification object from list.

}
\item{\code{toJSONString(pretty=TRUE)}}{

  Get JSON representation of DefaultClassification.

}
}
}

\keyword{datasets}
