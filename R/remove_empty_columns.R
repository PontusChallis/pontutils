


# function som rensar ut tomma kolumner med dplyr
#' @title Removes empty columns from a dataframe
#' @description Removes empty columns from a dataframe
#' @param df A dataframe.
#' @return A dataframe.
#' @examples
#' df <- data.frame(a = c(1,2,3), b = c(NA, NA, NA), c = c(NA, 2, NA))
#' remove_empty_columns(df)

#' @importFrom dplyr select_if
#' @export remove_empty_columns

remove_empty_columns <- function(df){
  df <- df %>% dplyr::select_if(~!all(is.na(.))) %>% return()
  return(df)
}
