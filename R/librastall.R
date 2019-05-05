#' @title librastall (library() + install.packages())
#'
#' @description Import a library and install it if it is not already installed.
#' @param package (string) The name of the library to load and install
#' @examples
#' librastall("dplyr")
#' @export
librastall <- function(package){
  if(!require(package, character.only = T)){
    install.packages(package, dep = T)
    require(package, character.only = T)
  }
}


#' @title librastall_github (library() + install.github())
#'
#' @description Import a library and install it if it is not already installed.
#' @param repo (string) The name of the repo to load and install
#' @examples
#' librastall_github("georg-un/usefulR")
#' @export
librastall_github <- function(repo){
  if(!require("devtools", character.only = T)){
    install.packages("devtools", dep = T)
    require("devtools", character.only = T)
  }

  if(!require(package, character.only = T)){
    install_github(repo = as.character(repo))
    require(package, character.only = T)
  }
}
