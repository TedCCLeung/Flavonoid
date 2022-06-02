list_to_matrix <- function(
  input_list
){

  mat_intersect <- input_list %>%
    utils::stack() %>%
    table() %>%
    crossprod()

  return(mat_intersect)
}
