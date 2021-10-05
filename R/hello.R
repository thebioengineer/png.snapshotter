#' save to image code that generates a plot
#'
#' @param x code to evaluate
#' @param device device to use to record image
#' @param file filepath for device
#'
#' @importFrom grDevices dev.off
#'
#' @examples
#'
#' save_as_image({
#' plot(c(1, 2, 3, 4))
#' },
#' device = png,
#' file = "test.png"
#' )
#'
#' @export
save_as_image <- function(x, device, file = tempfile()) {

  x_sub <-eval(substitute(x))

  x_func<-eval(call("function",NULL,x_sub))

  device(file = file)
  x_func()
  dev.off()

  return(file)
}
