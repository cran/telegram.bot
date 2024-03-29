% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/updater.R
\name{stop_polling}
\alias{stop_polling}
\title{Stop polling}
\usage{
stop_polling()
}
\description{
Stops the polling. Requires no parameters.
}
\examples{
\dontrun{
# Example of a 'kill' command
kill <- function(bot, update) {
  bot$sendMessage(
    chat_id = update$message$chat_id,
    text = "Bye!"
  )
  # Clean 'kill' update
  bot$getUpdates(offset = update$update_id + 1)
  # Stop the updater polling
  updater$stop_polling()
}

updater <<- updater + CommandHandler("kill", kill)

updater$start_polling(verbose = TRUE) # Send '/kill' to the bot
}
}
