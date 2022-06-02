#' Output a Venn diagram of the overlapping of HY5-related genes
#'
#' @importFrom magrittr %>%
#'
#' @param output_file Output path of the table
#'
#' @return None
#'
#' @export

HY5_Venn <- function(
  output_file = "HY5_Venn.pdf"
){
  ## Plotting the Venn diagram
  grDevices::pdf(output_file)
  get_HY5_gene_lists() %>% eulerr::euler(shape = "ellipse") %>% plot(quantities = TRUE)
  grDevices::dev.off()
}


