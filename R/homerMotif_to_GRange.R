homerMotif_to_GRange <- function(
  homer_file = "/Users/TedCCLeung/Documents/Projects/Packages/Phenylpropanoid/flavonoid_mappings.txt",
  upstream = 500,
  downstream = 250
){

  seq_length <- upstream + downstream

  df <- utils::read.delim(homer_file)

  motif_start = upstream+df$Offset + 1
  motif_end = upstream+df$Offset+(nchar(df$Sequence)-1)*ifelse(df$Strand == "+", 1, -1) + 1


  df_grange <- data.frame(
    seqnames = paste0(df$PromoterID, "-", df$Name),
    start = base::pmin(motif_start, motif_end),
    end = base::pmax(motif_start, motif_end),
    width = nchar(df$Sequence),
    strand = df$Strand,
    motif = df$Motif.Name,
    score = df$MotifScore
  )

  seq_info_vec <- as.numeric(rep(seq_length, length(unique(df_grange$seqnames))))
  names(seq_info_vec) <- unique(df_grange$seqnames)

  grange <- GenomicRanges::makeGRangesFromDataFrame(
    df_grange,
    keep.extra.columns = TRUE,
    seqinfo = seq_info_vec
  )

  pdf("/Users/TedCCLeung/Documents/Projects/Photoperiod/hello.pdf", height = 20, width = 5)
  autoplot(grange, layout = "karyogram", aes(fill = motif, color = motif)) + theme(
    strip.background = element_rect(fill = NA, colour = NA),
    panel.background = element_rect(fill = NA, colour = NA) )
  dev.off()
}
