#function that with dplyr returns range of column
#' @title Returns range of column
#' @description Returns range of column
#'
#' @param data A dataframe.
#' @param column A column to get range from.
#' @return A range of a column.
#' @examples
#' df <- data.frame(a = c(1,2,3), b = c(NA, NA, NA), c = c(NA, 2, NA))
#' range_of_column(df, a)
#'
#' @export range_of_column
range_of_column <- function(data,column){
  data %>%
    dplyr::pull({{column}}) %>%
    range(na.rm = TRUE)
}
