% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/extract.R
\name{select_obs_parameters}
\alias{select_obs_parameters}
\title{Return the name of the observation model parameters.}
\usage{
select_obs_parameters(fit)
}
\arguments{
\item{fit}{An object returned by either \code{\link{draw_samples}} or \code{\link{optimizing}}.}
}
\value{
A character vector with the names of the observation model parameters.
}
\description{
Return the name of the observation model parameters.
}
\seealso{
\code{\link{select_parameters}}.
}
\keyword{internal}
