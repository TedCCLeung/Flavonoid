get_HY5_gene_lists <- function(

){

  anthocyanin_genes <- phenylpropanoid_gene_table[which(phenylpropanoid_gene_table[, "Branch"] %in% c(2,12,123)), "AT"] %>%
    purrr::discard(is.na) %>%
    sort()

  lignin_genes <- phenylpropanoid_gene_table[which(phenylpropanoid_gene_table[, "Branch"] %in% c(1, 12, 15, 123)), "AT"] %>%
    purrr::discard(is.na) %>%
    sort()

  high_confidence_HY5_genes <- high_confidence_HY5_genes
  HY5_predicted_targets <- HY5_predicted_targets

  HY5_motif_genes <- HY5_motif_genes

  summer_genes <- summer_genes

  gene_list <- list(
    lignin_genes = lignin_genes,
    anthocyanin_genes = anthocyanin_genes,
    high_confidence_HY5_binding_genes = high_confidence_HY5_genes,
    HY5_predicted_targets = HY5_predicted_targets,
    HY5_motif_genes = HY5_motif_genes,
    summer_genes = summer_genes
  )

  return(gene_list)

}
