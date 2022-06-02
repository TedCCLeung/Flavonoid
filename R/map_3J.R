map_3J <- function(

){

  flavonoid_genes <- utils::read.table("data-raw/flavonoid_genes.txt")[, 1]
  selected_motifs <- c("M07015_2.00", "M06896_2.00", "M07004_2.00", "M08407_2.00", "M07048_2.00", "M06706_2.00")

  promoters <- get_promoters(
    gene_models = paste0(flavonoid_genes, ".1"),
    upstream = 500,
    downstream = 250
  )

  motifs <- universalmotif::read_homer("/Users/TedCCLeung/Documents/Projects/Packages/all.8.motif")
  test_motifs <- universalmotif::filter_motifs(motifs, name = selected_motifs) %>%
    universalmotif::to_df()
  test_motifs <- test_motifs[, 1:ncol(test_motifs)-1]
  test_motifs %>%
    universalmotif::to_list() %>%
    universalmotif::write_homer(file = "hello.homer", threshold = 8, overwrite = TRUE, threshold.type = "logodds.abs")

  scanning <- universalmotif::scan_sequences(
    motifs = motifs, sequences = promoters, calc.pvals = TRUE, no.overlaps = TRUE,
    threshold = 8, threshold.type = "logodds.abs"
  )

  pdf("/Users/TedCCLeung/Documents/Projects/Photoperiod/2_analysis/2_pipeline/ff_motifs.pdf")
  universalmotif::view_motifs(test_motifs %>% universalmotif::to_list())
  dev.off()
}
