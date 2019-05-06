#' @title Load and Install
#'
#' @description \strong{libra}ry() + in\strong{stall}.packages() \cr
#' Import a library and install it, if it is not already installed.
#' @param package The name of the library to load and install (string)
#' @examples
#' librastall("dplyr")
#' @export
librastall <- function(package){
  if(!require(package, character.only = T)){
    install.packages(package, dep = T)
    require(package, character.only = T)
  }
}


#' @title Load and Install from Github
#'
#' @description \strong{libra}ry() + in\strong{stall}_github() \cr
#' Import a library and install it, if it is not already installed.
#' @param repo The name of the repo to load and install (string)
#' @examples
#' librastall_github("georg-un/usefulR")
#' @export
librastall_github <- function(repo){
  if(!require("devtools", character.only = T)){
    install.packages("devtools", dep = T)
    require("devtools", character.only = T)
  }
  if(!require(strsplit(repo, "/")[[1]][2], character.only = T)){
    install_github(repo)
    require(package, character.only = T)
  }
}
