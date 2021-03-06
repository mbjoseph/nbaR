% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MultiPoint.r
\docType{data}
\name{MultiPoint}
\alias{MultiPoint}
\title{MultiPoint Class}
\format{An object of class \code{R6ClassGenerator} of length 24.}
\usage{
MultiPoint
}
\description{
MultiPoint Class
}
\section{Fields}{

\describe{
\item{\code{crs}}{Crs}

\item{\code{bbox}}{list(numeric)}

\item{\code{coordinates}}{list(LngLatAlt)}
}}

\section{Methods}{

\describe{

\item{\code{$new()}}{

  Constructor MultiPoint object.

}
\item{\code{$fromList(MultiPointList)}}{

  Create MultiPoint object from list.

}

\item{\code{$toList()}}{

  Get list representation of MultiPoint.

}
\item{\code{fromJSONString(MultiPointJson)}}{

  Create MultiPoint object from list.

}
\item{\code{toJSONString(pretty=TRUE)}}{

  Get JSON representation of MultiPoint.

}
}
}

\keyword{datasets}
