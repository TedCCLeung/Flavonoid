map_PPgenes <- function(
  motifs = HY5
){

  ## Get the phenylpropanoid genes -----------------------------------
  pp_genes <- paste0(phenylpropanoid_gene_table$AT, ".1")

  ## Get promoter sequences -----------------------------------
  pp_promoters <- get_promoters(gene_models = pp_genes, upstream = 1000, downstream = 500)

  res <- universalmotif::scan_sequences(
    motifs,
    pp_promoters,
    return.granges = TRUE,
    calc.pvals = TRUE,
    no.overlaps = TRUE,
    threshold = 0.2,
    threshold.type = "logodds"
  )

  df_res <- res %>% as.data.frame()
  HY5_motif_genes <- unique(df_res$seqnames) %>% substr(1, 9)
  usethis::use_data(HY5_motif_genes)

  ## Plotting -----------------------------------

  autoplot <- ggbio::autoplot(res, layout = "karyogram", ggplot2::aes(fill = motif, color = motif)) +
    ggplot2::theme(
      strip.background = ggplot2::element_rect(fill = NA, colour = NA),
      panel.background = ggplot2::element_rect(fill = NA, colour = NA)
    )

  return(autoplot)
}


