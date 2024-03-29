% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dispatcher.R
\name{add_error_handler}
\alias{add_error_handler}
\title{Add an error handler}
\usage{
add_error_handler(callback)
}
\arguments{
\item{callback}{A function that takes \code{(bot, error)} as arguments.}
}
\description{
Registers an error handler in the \code{\link{Dispatcher}}.
}
\details{
You can also use \code{\link{add_handler}} to register error handlers
if the handler is of type \code{\link{ErrorHandler}}.
}
\examples{
\dontrun{
updater <- Updater(token = "TOKEN")

# Create error callback
error_callback <- function(bot, error) {
  warning(simpleWarning(conditionMessage(error), call = "Updates polling"))
}

# Register it to the updater's dispatcher
updater$dispatcher$add_error_handler(error_callback)
# or
updater$dispatcher$add_handler(ErrorHandler(error_callback))
# or
updater <- updater + ErrorHandler(error_callback)
}
}
