#' @title Not-In
#' @name not-in
#'
#' @description Opposite of \%in\%
#' @param x vector or NULL: the values to be matched.
#' @param table vector or NULL: the values to be matched against.
#' @usage NULL
#'
#' @export
#' @examples \dontrun{
#' x <- 1
#' x %!in% c(2,3,4,5)  # TRUE
#' }
'%!in%' <- function(x, table) {
  return ( !('%in%'(x, table)) )
}


#' @title Get Mode
#'
#' @description Get the mode of a vector.
#' @param x A vector
#' @export
#' @examples
#' x <- c(1,2,3,4,5,5,5)
#' get_mode(x)  # returns 5
get_mode <- function(x) {
  uniques <- unique(x)
  return( uniques[which.max(tabulate(match(x, uniques)))] )
}
