#väljer lägsta värdet från två kolumner och skapar en ny kolumn

#' @title Choose lowest value from two columns
#' @description Choose lowest value from two columns
#' @param data A dataframe.
#' @param col1 A column to compare.
#' @param col2 A column to compare.
#' @param new_col_name A name for the new column.
#' @return A dataframe.
#' @examples
#' df <- data.frame(a = c(1,2,3), b = c(2, 4, 1))
#' choose_lowest_value(df, a, b, lowest_number)
#'
#' @export choose_lowest_value
#'
choose_lowest_value <- function(data, col1, col2, new_col_name) {
  data <- data %>%
    dplyr::mutate({{ new_col_name }} := pmin({{ col1 }}, {{ col2 }},na.rm = T))
  return(data)
}

