#' Diamond Plot
#'
#' This function produces a ggplot plot of \code{vary} versus \vode{varx} with diamond markers.
#'
#' @param df a data frame
#' @param varx string name for variable x in the data frame df
#' @param vary string name for variable y in the data frame df
#'
#' @return A plot with diamond markers of \code{vary} versus \code{varx}
#' @export
#'
#'@importFrom ggplot2
#'@importFrom ggplot2 geom_point
#'
#' @examples
#'
#' df_test <- data.frame(x = rnorm(10), y = rnorm(10))
#'
#' diamond_plot(df_test, x, y)
#'
#'
#'
diamond_plot <-function(df, varx, vary) {
  ggplot(df, aes(x = get(varx), y = get(vary))) +
    geom_point(
      shape = 23,
      fill = "blue",
      color = "darkred",
      size = 3
    )
  }
