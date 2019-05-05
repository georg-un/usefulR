#' @title Mean Euclidean Distance
#'
#' @description A custom keras loss function which calculates the mean euclidean distance between predicted and true values.
#' Useful for multi-target regression where the target variable is a point in n-dimensional space.
#' @param y_true True labels (tensor)
#' @param y_pred Predictions (tensor of the same shape as y_true)
#' @examples \dontrun {
#' # Create custom metric
#' metric_mean_euclid_dist <- custom_metric("mean_euclid_dist", function(y_true, y_pred) {
#'     return( mean_euclid_dist(y_true, y_pred) )
#' })
#'
#' # Compile model with custom loss & custom metric
#' model %>% compile(
#'     optimizer = adam(),
#'     loss = mean_euclid_dist,
#'     metrics = c('mse', metric_mean_euclid_dist)
#' )
#' }
#' @export
mean_euclid_dist <- function(y_true, y_pred){
  K <- backend()
  return( K$mean(K$sqrt(K$sum(K$square(y_pred - y_true), axis=as.integer(-1)))) )
}


#' @title Mean Squared Euclidean Distance
#'
#' @description A custom keras loss function which calculates the mean suqared euclidean distance between predicted and true values.
#' Useful for multi-target regression where the target variable is a point in n-dimensional space.
#' @param y_true True labels (tensor)
#' @param y_pred Predictions (tensor of the same shape as y_true)
#' @examples \dontrun {
#' # Create custom metric
#' metric_mean_squared_euclid_dist <- custom_metric("mean_squared_euclid_dist", function(y_true, y_pred) {
#'     return( mean_squared_euclid_dist(y_true, y_pred) )
#' })
#'
#' # Compile model with custom loss & custom metric
#' model %>% compile(
#'     optimizer = adam(),
#'     loss = mean_squared_euclid_dist,
#'     metrics = c('mse', metric_mean_squared_euclid_dist)
#' )
#' }
#' @export
mean_squared_euclid_dist <- function(y_true, y_pred){
  K <- backend()
  return( K$mean(K$sum(K$square(y_pred - y_true), axis=as.integer(-1))) )
}
