
#function som skapar ny variabel region utifrån vilket sjukhus
#anger en exel ark som har en lookup table för region och sjukhus
#' @title add_lookup_variale_from_excel_file
#' @description Function that adds a new lookup variable to a dataframe from an excel file
#' Excelfile has two columns first the match_var column, and the second column the new column to be added.
#' @param data any data frame to add a new column from look up table
#' @param path_to_excel_file path to the excel file
#' @param match_var the column to match with in the look up table
#'
#' @return Returns dataframe with new lookup variable
#' @export add_lookup_variale_from_excel_file
#'

add_lookup_variale_from_excel_file <- function(data,path_to_excel_file,match_var){
  lookup_table<- read_excel(sokvag,sheet = 2)
  data <- data %>% left_join(lookup_table,by=match_var)
}
