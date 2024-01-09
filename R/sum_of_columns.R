#function that returns the sum of culmns into a new column

#' @title Sum of columns
#' @description Sum of columns
#' @param data A dataframe.
#' @param new_column A name for the new column.
#' @param ... Columns to sum.
#' @return A dataframe.
#' @examples
#' df <- data.frame(a = c(1,2,3), b = c(4,2,1))
#' sum_of_columns(df, "sum_of_a_b", a, b)

## quiets concerns of R CMD check re: the .'s that appear in pipelines


#' @export sum_of_columns
sum_of_columns <- function(data, new_column, ...){
  data %>%
    dplyr::mutate({{new_column}} := rowSums(dplyr::select(.,...), na.rm = TRUE)) %>% return()
}
