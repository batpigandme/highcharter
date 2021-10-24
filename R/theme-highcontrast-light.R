#' High Contrast Light theme for highcharts
#' Accessible high-contrast theme for Highcharts tailored 
#' towards 3:1 contrast against white/off-white backgrounds.
#' Adapted from https://github.com/highcharts/highcharts/blob/master/ts/Extensions/Themes/HighContrastLight.ts
#'
#' @param ... A named parameters to modify the theme.
#'
#' @examples
#'
#' highcharts_demo() %>%
#'   hc_add_theme(hc_theme_highcontrast_light())
#' @export
hc_theme_highcontrast_light <- function(...) {
  theme <- hc_theme(
    colors = c(
      '#5f98cf', '#434348', '#49a65e', '#f45b5b', '#708090', 
      '#b68c51', '#397550', '#c0493d', '#4f4a7a', '#b381b3'
    ),
    chart = list(
      style = list(
        fontFamily = c("Lucida Grande", "Lucida Sans Unicode", "Arial", "Helvetica", "sans-serif"),
        color = "#666666",
        fill = "#666666"
      )
    ),
    title = list(
      align = "center",
      style = list(
        color = "#333333"
      )
    ),
    subtitle = list(
      align = "center",
      color = "#666666"
    ),
    yAxis = list(
      gridLineColor = "#e6e6e6",
      lineColor = "#e6e6e6",
      tickWidth = 1
    ),
    axisLine = list(
      color = "#ccd6eb"
    ),
    navigator = list(
      series = list(
        color = '#5f98cf',
        lineColor = '#5f98cf'
      )
    ),
    plotOptions = list(
      line = list(
        marker = list(enabled = TRUE)
      ),
      spline = list(
        marker = list(enabled = TRUE)
      )
    )
  )
  
  theme <- structure(theme, class = "hc_theme")
  
  if (length(list(...)) > 0) {
    theme <- hc_theme_merge(
      theme,
      hc_theme(...)
    )
  }
  
  theme
}
