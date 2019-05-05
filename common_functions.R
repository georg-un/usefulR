# --------------------------------------------------------
# 
# Collection of frequently used custom functions
#
# --------------------------------------------------------



# (library +  install) Import a library and install it if it is not already installed
librastall <- function(package){
  if(!require(package, character.only = T)){
    install.packages(package, dep = T)
    require(package, character.only = T)
  }
}


# Import a github-library and install it if it is not already installed
librastall_github <- function(package, author, directory){
  if(!require("devtools", character.only = T)){
    install.packages("devtools", dep = T)
    require("devtools", character.only = T)
  }
  
  if(!require(package, character.only = T)){
    install_github(repo = as.character(package), 
                   username = as.character(author), 
                   subdir = as.character(directory))
    require(package, character.only = T)
  }
}


# Not-in (opposite of %in%)
'%!in%' <- function(x,y) {
  return ( !('%in%'(x,y)) )
}


# Mode of a vector
get_mode <- function(x) {
  uniques <- unique(x)
  return( uniques[which.max(tabulate(match(x, uniques)))] )
}
