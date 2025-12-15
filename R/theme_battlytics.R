#' Battlytics ggplot2 theme
#'
#' A clean, consulting-style theme for charts used in Battlytics briefs.
#'
#' @param base_size Base font size.
#' @param base_family Base font family, default "sans".
#'
#' @return A ggplot2 theme object.
#' @export
theme_battlytics <- function(base_size = 12, base_family = "sans") {
  cols <- batt_cols()
  
  ggplot2::theme_minimal(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      plot.background = ggplot2::element_rect(fill = cols["white"], colour = NA),
      panel.background = ggplot2::element_rect(fill = cols["white"], colour = NA),
      
      panel.grid.minor = ggplot2::element_blank(),
      panel.grid.major.x = ggplot2::element_blank(),
      panel.grid.major.y = ggplot2::element_line(colour = scales::alpha(cols["navy"], 0.08)),
      
      axis.title = ggplot2::element_text(colour = cols["deep_navy"]),
      axis.text = ggplot2::element_text(colour = scales::alpha(cols["deep_navy"], 0.85)),
      
      plot.title = ggplot2::element_text(
        face = "bold",
        colour = cols["deep_navy"],
        size = base_size * 1.3,
        margin = ggplot2::margin(b = 6)
      ),
      plot.subtitle = ggplot2::element_text(
        colour = scales::alpha(cols["deep_navy"], 0.85),
        size = base_size * 1.05,
        margin = ggplot2::margin(b = 10)
      ),
      plot.caption = ggplot2::element_text(
        colour = scales::alpha(cols["deep_navy"], 0.7),
        size = base_size * 0.85,
        margin = ggplot2::margin(t = 10)
      ),
      
      legend.title = ggplot2::element_text(colour = cols["deep_navy"]),
      legend.text = ggplot2::element_text(colour = scales::alpha(cols["deep_navy"], 0.85))
    )
}

#' Standard Battlytics labels
#'
#' @param title Plot title.
#' @param subtitle Plot subtitle.
#' @param caption Plot caption, usually includes source.
#' @param x X-axis title.
#' @param y Y-axis title.
#'
#' @return A ggplot2 labels object.
#' @export
batt_labs <- function(title,
                      subtitle = NULL,
                      caption = NULL,
                      x = NULL,
                      y = NULL) {
  ggplot2::labs(
    title = title,
    subtitle = subtitle,
    caption = caption,
    x = x,
    y = y
  )
}

#' Build a consistent Battlytics caption
#'
#' @param source Source string, for example "Source: NESO, 2025".
#' @param notes Optional notes, for example "Notes: Values are real terms".
#'
#' @return A single character string suitable for ggplot caption.
#' @export
batt_caption <- function(source, notes = NULL) {
  if (is.null(notes) || !nzchar(notes)) {
    source
  } else {
    paste0(source, " | ", notes)
  }
}
