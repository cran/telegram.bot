% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dispatcher.R
\name{add_handler}
\alias{add_handler}
\title{Add a handler}
\usage{
add_handler(handler, group = 1L)
}
\arguments{
\item{handler}{A \code{Handler} instance.}

\item{group}{The group identifier, must be higher or equal to 1.
Default is 1.}
}
\description{
Register a handler. A handler must be an instance of a subclass of
\code{\link{Handler}}. All handlers are organized in groups with a numeric
value. The default group is 1. All groups will be evaluated for handling an
update, but only 0 or 1 handler per group will be used.
}
\details{
You can use the \code{\link{add}} (\code{+}) operator instead.

The priority/order of handlers is determined as follows:
\enumerate{
  \item{Priority of the group (lower group number = higher priority)}
  \item{The first handler in a group which should handle an update will be
    used. Other handlers from the group will not be used.
    The order in which handlers were added to the group defines the priority
    (the first handler added in a group has the highest priority).
  }
}
}
