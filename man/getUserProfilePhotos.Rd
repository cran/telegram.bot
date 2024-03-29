% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bot.R
\name{getUserProfilePhotos}
\alias{getUserProfilePhotos}
\title{Get a user's profile photos}
\usage{
getUserProfilePhotos(user_id, offset = NULL, limit = 100L)
}
\arguments{
\item{user_id}{Unique identifier of the target user.}

\item{offset}{(Optional). Sequential number of the first photo to be
returned. By default, all photos are returned.}

\item{limit}{(Optional). Limits the number of photos to be retrieved. Values
between 1-100 are accepted. Defaults to 100.}
}
\description{
Use this method to get a list of profile pictures for a user.
}
\details{
You can also use it's snake_case equivalent \code{get_user_profile_photos}.

See \code{\link{getFile}} to know how to download files.
}
\examples{
\dontrun{
bot <- Bot(token = bot_token("RTelegramBot"))
chat_id <- user_id("Me")

photos <- bot$getUserProfilePhotos(chat_id = chat_id)
}
}
