#' Battlytics brand colours
#'
#' A named vector of Battlytics colours derived from the brand logo.
#'
#' @return A named character vector of hex colours.
#' @export
batt_cols <- function() {
  c(
    navy = "#001F35",
    deep_navy = "#001528",
    cyan = "#16ABE9",
    blue = "#0175AA",
    ice = "#D9F2F7",
    white = "#FFFFFF"
  )
}

#' Battlytics palette
#'
#' Returns a vector of colours for use in charts.
#'
#' @param palette Palette name. Options: "main", "cool".
#' @param n Number of colours to return.
#'
#' @return A character vector of hex colours.
#' @export
batt_pal <- function(palette = "main", n = 3) {
  cols <- batt_cols()
  
  pal <- switch(
    palette,
    main = c(cols["cyan"], cols["blue"], cols["navy"], cols["ice"]),
    cool = c(cols["blue"], cols["cyan"], cols["ice"], cols["deep_navy"]),
    stop("Unknown palette. Use 'main' or 'cool'.", call. = FALSE)
  )
  
  if (!is.numeric(n) || length(n) != 1 || n < 1) {
    stop("n must be a single number >= 1.", call. = FALSE)
  }
  
  pal <- unname(pal)
  if (n <= length(pal)) {
    pal[seq_len(n)]
  } else {
    rep(pal, length.out = n)
  }
}

#' Battlytics colour scale for ggplot2
#'
#' @param palette Palette name. Options: "main", "cool".
#' @param ... Passed to ggplot2::discrete_scale
#'
#' @export
scale_color_battlytics <- function(palette = "main", ...) {
  ggplot2::discrete_scale(
    aesthetics = "colour",
    scale_name = "battlytics",
    palette = function(n) batt_pal(palette = palette, n = n),
    ...
  )
}

#' Battlytics fill scale for ggplot2
#'
#' @param palette Palette name. Options: "main", "cool".
#' @param ... Passed to ggplot2::discrete_scale
#'
#' @export
scale_fill_battlytics <- function(palette = "main", ...) {
  ggplot2::discrete_scale(
    aesthetics = "fill",
    scale_name = "battlytics",
    palette = function(n) batt_pal(palette = palette, n = n),
    ...
  )
}
