## ----setup, include = FALSE----------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ---- eval = F-----------------------------------------------------------
#  filter_user <- function(message){
#                     message$from_user  == <user-id>
#                 }

## ---- eval = F-----------------------------------------------------------
#  kill_handler <- CommandHandler('kill', kill, filter_user)

## ---- eval = F-----------------------------------------------------------
#  Filters$text_or_command <- function(message){
#                                 !is.null(message$text)
#                             }

