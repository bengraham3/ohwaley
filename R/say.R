#' Whale Joke
#'
#' @param This function is used to print a cheesey whale joke.
#'
#' @return Text string
#' @export
#'
#' @examples
#' say()
say <- function(what){
  #Defining the whale ASCII
  whale = "\n            ------ \n           %s \n            ------ \n               \\\   \n                \\\  \n                 \\\
     .-'
'--./ /     _.---.
'-,  (__..-`       \\
   \\          .     |
    `,.__.   ,__.--/
     '._/_.'___.-`
"
#Finding the position of where to print message
what_pos_start <-
  regexpr('%s', whale)[1] - 1

what_pos_end <- what_pos_start + 3

#If what isn't supplied...
if(missing(what)){
    what <- phrases %>% sample(size = 1) #See here's the pipe!
}

#Combining positions, message and whale together
out <- paste0(substr(whale, 1, what_pos_start), #Top of speech bubble
              what, #User specified message
              substr(whale, what_pos_end, nchar(whale))) #Bottom of speech bubble + whale

#Return whale message
message(out)

}

#' Whale pun phrases used in say()
#' @keywords internal
phrases <-  c(
  "You're whale-come!",
  "How are you? I'm whaley good!",
  "I'm having a whale of a time!",
  "Whale, whale, whale...look who's here!",
  "Gee...this is over-whalming!",
  "Everything whale be alright!",
  "Get whale soon!",
  "Whale done! This looks great!",
  "What do you call a pod of noisy whales?        An ORCASTRA!"
)


what <- c("This is a character string")
say(what)




