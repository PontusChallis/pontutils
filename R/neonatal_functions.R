# functions to convert days to hole weeks
# internal function


convert_days_to_weeks <- function(days){
  weeks <- floor(days%/%7)
  return(weeks)
}


#function to convert days to weeks, takes a dataframe and the column to convert
#uses mutate
#' Title
#'@title Convert a column of days to hole weeks
#'@description Convert a column of days to hole weeks
#'
#' @param data a dataframe with the column
#' @param column the column in age to convert
#'
#' @return the dataframe with the new column namned {{column}}_in_gw
#' @export pontutils_column_to_gw
#'
pontutils_column_to_gw <- function(data, column){
  data %>% mutate("{{column}}_in_gw":=convert_days_to_weeks({{column}})) %>%
                    return()

}

