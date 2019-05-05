#' @title # %!in% (not-in)
#'
#' @description Opposite of %in%
#' @param x (string) vector or NULL: the values to be matched.
#' @param table (string) ector or NULL: the values to be matched against.
#'
#' @export
#' @examples
#' librastall_github("georg-un/usefulR")
'%!in%' <- function(x, table) {
  return ( !('%in%'(x, table)) )
}


#' @title # get_mode
#'
#' @description Get the mode of a vector.
#' @param x (vector) A vector
#' @export
#' @examples
#' x <- c(1,2,3,4,5,5,5)
#' get_mode(x)  # returns 5
get_mode <- function(x) {
  uniques <- unique(x)
  return( uniques[which.max(tabulate(match(x, uniques)))] )
}
