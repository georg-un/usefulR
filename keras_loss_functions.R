# ---------------------------------------------------------------
#
#  Collection of custom loss functions & metrics for R keras
#
#
#  Use them the following way:
#
#  model %>% compile(
#      loss = mean_euclid_dist,
#      optimizer = optimizer_adam(decay=0.001),
#      metrics = c(metric_mean_euclid_dist, "mae")
#  )
#
# ---------------------------------------------------------------

require("keras")


# Mean Euclidean Distance
mean_euclid_dist <- function(y_true, y_pred){
  K <- backend()
  return( K$mean(K$sqrt(K$sum(K$square(y_pred - y_true), axis=as.integer(-1)))) )
}

metric_mean_euclid_dist <- custom_metric("mean_euclid_dist", function(y_true, y_pred) {
  return( mean_euclid_dist(y_true, y_pred) )
})


# Mean Squared Euclidean Distance
mean_squared_euclid_dist <- function(y_true, y_pred){
  K <- backend()
  return( K$mean(K$sum(K$square(y_pred - y_true), axis=as.integer(-1))) ) 
}

metric_mean_squared_euclid_dist <- custom_metric("mean_squared_euclid_dist", function(y_true, y_pred) {
  return( mean_squared_euclid_dist(y_true, y_pred) )
})
