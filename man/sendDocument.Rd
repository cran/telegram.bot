% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bot.R
\name{sendDocument}
\alias{sendDocument}
\title{Send general files}
\usage{
sendDocument(
  chat_id,
  document,
  filename = NULL,
  caption = NULL,
  disable_notification = FALSE,
  reply_to_message_id = NULL,
  reply_markup = NULL,
  parse_mode = NULL
)
}
\arguments{
\item{chat_id}{Unique identifier for the target chat or username of
the target channel.}

\item{document}{File to send. Pass a file_id as String to send a file that
exists on the Telegram servers (recommended), pass an HTTP URL as a
String for Telegram to get a file from the Internet, or upload a local
file by passing a file path}

\item{filename}{(Optional). File name that shows in telegram message.}

\item{caption}{(Optional). Document caption, 0-1024 characters.}

\item{disable_notification}{(Optional). Sends the message silently. Users
will receive a notification with no sound.}

\item{reply_to_message_id}{(Optional). If the message is a reply, ID of the
original message.}

\item{reply_markup}{(Optional). A Reply Markup parameter object, it can be
either:
\itemize{
 \item{\code{\link{ReplyKeyboardMarkup}}}
 \item{\code{\link{InlineKeyboardMarkup}}}
 \item{\code{\link{ReplyKeyboardRemove}}}
 \item{\code{\link{ForceReply}}}}}

\item{parse_mode}{(Optional). Send 'Markdown' or 'HTML', if you want
Telegram apps to show bold, italic, fixed-width text or inline URLs in
your bot's message.}
}
\description{
Use this method to send general files.
}
\details{
You can also use it's snake_case equivalent \code{send_document}.
}
\examples{
\dontrun{
bot <- Bot(token = bot_token("RTelegramBot"))
chat_id <- user_id("Me")
document_url <- paste0(
  "https://github.com/ebeneditos/telegram.bot/raw/gh-pages/docs/",
  "telegram.bot.pdf"
)

bot$sendDocument(
  chat_id = chat_id,
  document = document_url
)
}
}
