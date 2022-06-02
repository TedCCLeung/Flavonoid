#' Output a table of the overlapping of HY5-related genes
#'
#' @importFrom magrittr %>%
#' @param output_file Output path of the table
#' @return None
#' @export

HY5_overlap_table <- function(
  output_file = "HY5_gene_overlap.tsv"
){
  df_table <- get_HY5_gene_lists() %>% utils::stack() %>% table() %>% unclass() %>% as.data.frame() %>%
    tibble::rownames_to_column("geneID")
  utils::write.table(df_table, file = output_file, quote = FALSE, row.names = FALSE, sep = "\t", col.names = TRUE)
}
