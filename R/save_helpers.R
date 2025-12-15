#' Save a plot for LinkedIn (16:9)
#'
#' Exports a crisp PNG using ragg. Defaults are tuned for LinkedIn posts.
#'
#' @param plot A ggplot object.
#' @param filename Output file path, should end with .png
#' @param width Width in inches.
#' @param height Height in inches.
#' @param dpi Resolution in dots per inch.
#'
#' @return The filename, invisibly.
#' @export
batt_save_linkedin <- function(plot,
                               filename,
                               width = 12,
                               height = 6.75,
                               dpi = 300) {
  if (!is.character(filename) || length(filename) != 1) {
    stop("filename must be a single string.", call. = FALSE)
  }
  if (!grepl("\\.png$", filename, ignore.case = TRUE)) {
    stop("filename must end with .png", call. = FALSE)
  }
  
  ragg::agg_png(filename = filename, width = width, height = height, units = "in", res = dpi)
  on.exit(grDevices::dev.off(), add = TRUE)
  
  print(plot)
  invisible(filename)
}

#' Save a square plot for LinkedIn
#'
#' @param plot A ggplot object.
#' @param filename Output file path, should end with .png
#' @param size Size in inches, applied to width and height.
#' @param dpi Resolution in dots per inch.
#'
#' @return The filename, invisibly.
#' @export
batt_save_square <- function(plot,
                             filename,
                             size = 8,
                             dpi = 300) {
  batt_save_linkedin(plot = plot, filename = filename, width = size, height = size, dpi = dpi)
}
