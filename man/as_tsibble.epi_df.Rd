% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/methods.R
\name{as_tsibble.epi_df}
\alias{as_tsibble.epi_df}
\title{Convert to tsibble format}
\usage{
\method{as_tsibble}{epi_df}(x, key, ...)
}
\description{
Converts an \code{epi_df} object into a tsibble, where the index is taken to be
\code{time_value}, and the key variables taken to be \code{geo_value} along with any
others in the \code{other_keys} field of the metadata, or else explicitly set.
}
