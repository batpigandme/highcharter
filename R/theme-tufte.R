#' Tufte theme for highcharts
#' 
#' Desing inspired by Edward Tufte style.
#' 
#' @param ... Named argument to modify the theme
#' 
#' @examples 
#'
#' n <- 15
#' dta <- dplyr::data_frame(
#'   x = rnorm(n),
#'   y = 1.5 * x + rnorm(n))
#' highchart() %>%
#'   hc_chart(type = "scatter") %>% 
#'   hc_add_series(data = list_parse(dta)) %>% 
#'   hc_add_theme(hc_theme_tufte())
#'   
#' 
#' values <- 1 + abs(rnorm(12))
#' highchart() %>%
#'   hc_chart(type = "column") %>%
#'   hc_add_series(data = values) %>%
#'   hc_xAxis(categories = month.abb) %>%
#'   hc_add_theme(hc_theme_tufte2())
#' 
#' @export
hc_theme_tufte <- function(...){
  
  theme <-
    hc_theme(
      colors = list("#737373", "#D8D7D6", "#B2B0AD", "#8C8984"),
      chart = list(
        style = list(
          fontFamily = "Cardo"
        )
      ),
      xAxis = list(
        lineWidth = 0,
        minorGridLineWidth = 0,
        lineColor = "transparent",
        tickColor = "#737373"
      ),
      yAxis = list(
        lineWidth = 0,
        minorGridLineWidth = 0,
        lineColor = "transparent",
        tickColor = "#737373",
        # extra to yAxis
        tickWidth = 1,
        gridLineColor = "transparent"
      ),
      legend = list(
        enabled = FALSE
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

#' @rdname hc_theme_tufte
#' @export
hc_theme_tufte2 <- function(...) {
  
  theme <- hc_theme_tufte(
    xAxis = list(tickWidth = 0, lineWidth = 1,lineColor = "#737373"),
    yAxis = list(tickWidth = 0, lineWidth = 1, gridLineColor = "white", gridZIndex = 4)
  )
  
  if (length(list(...)) > 0) {
    theme <- hc_theme_merge(
      theme,
      hc_theme(...)
    )
  } 
  
  theme
  
}


