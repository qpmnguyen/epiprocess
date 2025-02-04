% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/outliers.R
\name{detect_outlr_stl}
\alias{detect_outlr_stl}
\title{Detect outliers based on an STL decomposition}
\usage{
detect_outlr_stl(
  x = seq_along(y),
  y,
  n_trend = 21,
  n_seasonal = 21,
  n_threshold = 21,
  seasonal_period = NULL,
  log_transform = FALSE,
  detect_negatives = FALSE,
  detection_multiplier = 2,
  min_radius = 0,
  replacement_multiplier = 0
)
}
\arguments{
\item{x}{Design points corresponding to the signal values \code{y}. Default is
\code{seq_along(y)} (that is, equally-spaced points from 1 to the length of
\code{y}).}

\item{y}{Signal values.}

\item{n_trend}{Number of time steps to use in the rolling window for trend.
Default is 21.}

\item{n_seasonal}{Number of time steps to use in the rolling window for
seasonality. Default is 21.}

\item{n_threshold}{Number of time steps to use in rolling window for the IQR
outlier thresholds.}

\item{seasonal_period}{Integer specifying period of seasonality. For example,
for daily data, a period 7 means weekly seasonality. The default is \code{NULL},
meaning that no seasonal term will be included in the STL decomposition.}
}
\value{
A tibble with number of rows equal to \code{length(y)}, and columns
\code{lower}, \code{upper}, and \code{replacement}.
}
\description{
Detects outliers based on a seasonal-trend decomposition using LOESS (STL).
}
\details{
The STL decomposition is computed using the \code{feasts} package. Once
computed, the outlier detection method is analogous to the rolling median
method in \code{detect_outlr_rm()}, except with the fitted values and residuals
from the STL decomposition taking the place of the rolling median and
residuals to the rolling median, respectively.

The last set of arguments, \code{log_transform} through \code{replacement_multiplier},
are exactly as in \code{detect_outlr_rm()}; refer to its help file for their
description.
}
