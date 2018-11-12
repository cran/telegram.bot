## ----setup, include = FALSE----------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ---- eval = F-----------------------------------------------------------
#  echo <- function(bot, update){
#  	bot$sendMessage(chat_id = update$message$chat_id, text = update$message$text)
#  }
#  
#  echo_handler <- MessageHandler(echo, MessageFilters$text)
#  dispatcher$add_handler(echo_handler)

## ---- eval = F-----------------------------------------------------------
#  caps <- function(bot, update, args){
#  	text_caps <- toupper(paste(args, collapse = ' '))
#  	bot$sendMessage(chat_id = update$message$chat_id, text = text_caps)
#  }
#  
#  caps_handler <- CommandHandler('caps', caps, pass_args = TRUE)
#  dispatcher$add_handler(caps_handler)

## ---- eval = F-----------------------------------------------------------
#  unknown <- function(bot, update){
#  	bot$sendMessage(chat_id = update$message$chat_id,
#                          text = "Sorry, I didn't understand that command.")
#  }
#  
#  unknown_handler <- MessageHandler(unknown, MessageFilters$command)
#  dispatcher$add_handler(unknown_handler)

## ---- eval = F-----------------------------------------------------------
#  # Replace the original line with
#  updater <<- Updater(token = 'TOKEN')
#  
#  ...
#  
#  # Example of a 'kill' command
#  kill <- function(bot, update){
#    bot$sendMessage(chat_id = update$message$chat_id,
#                    text = "Bye!")
#    # Clean 'kill' update
#    bot$getUpdates(offset = update$update_id + 1)
#    # Stop the updater polling
#    updater$stop_polling()
#  }
#  
#  kill_handler <- CommandHandler('kill', kill)
#  dispatcher$add_handler(kill_handler)

