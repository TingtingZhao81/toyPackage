#' Title
#'
#' @param rf random forest prediction model
#' @param data 0
#'
#' @return vector
#' @export
#'
#' @examples
predict_rf <- function(rf, data=0){
  test <- as.data.frame(matrix(ncol=6, nrow=2))

  colnames(test) <- c("mz0", "int2_o_int0", "int1_o_int0",
                      "RI2_RI1", "mz_2_0","mz_1_0")
  test$mz0 <- c(200,100)
  test$int2_o_int0 <- c(0.37, 0.05)
  test$int1_o_int0 <- c(0.1,0.05)
  test$RI2_RI1 <- test$int2_o_int0 - test$int1_o_int0
  test$mz_2_0 <- c(1.997,2.003)
  test$mz_1_0 <- c(1.003,1.003)

  pre <- stats:: predict(rf, test)
  return(pre)
}
