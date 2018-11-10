## ----setup, include = FALSE----------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ---- eval = F-----------------------------------------------------------
#  library(telegram.bot)
#  
#  updater <- Updater(token='TOKEN')

## ---- eval = F-----------------------------------------------------------
#  user_renviron <- path.expand(file.path("~", ".Renviron"))
#  file.edit(user_renviron) # Open with another text editor if this fails

## ---- eval = F-----------------------------------------------------------
#  updater <- Updater(token = bot_token('RBot'))

## ---- eval = F-----------------------------------------------------------
#  dispatcher <- updater$dispatcher

## ---- eval = F-----------------------------------------------------------
#  start <- function(bot, update){
#    bot$sendMessage(chat_id = update$message$chat_id,
#                    text = sprintf("Hello %s!", update$message$from$first_name))
#  }

## ---- eval = F-----------------------------------------------------------
#  start_handler <- CommandHandler('start', start)
#  dispatcher$add_handler(start_handler)

## ---- eval = F-----------------------------------------------------------
#  updater$start_polling()

