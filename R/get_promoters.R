get_promoters <- function(
  gene_models,
  upstream = 500,
  downstream = 250
){

  ## 01. Get the location of promoter
  ## Ideally I do not want to make a TxDb object everytime I get promoters
  ## But somehow the sqlite database doesn't work when but inside a package due to null pointer issues
  txdb <- make_TAIR10_TxDb()
  valid.genes <- GenomicFeatures::transcripts(txdb)$tx_name
  gene_models <- gene_models[gene_models %in% valid.genes]
  print(paste0("invalid genes: ", as.character(length(gene_models[!(gene_models %in% valid.genes)]))))
  pr.ranges <- GenomicFeatures::promoters(txdb, upstream = upstream, downstream = downstream)[gene_models,]
  ## Add the length of chromosomes in bp manually
  GenomeInfoDb::seqlengths(pr.ranges) <- c(30427671, 19698289, 23459830, 18585056, 26975502, NA, NA)
  pr.ranges <- GenomicRanges::trim(pr.ranges)
  GenomeInfoDb::seqlevelsStyle(pr.ranges) <- "TAIR9"

  ## 02. Get the genome sequence (TAIR9 and TAIR10 are identical)
  genome <- BSgenome.Athaliana.TAIR.TAIR9::BSgenome.Athaliana.TAIR.TAIR9

  ## 03. Get the sequence and output to a fasta file
  return(Biostrings::getSeq(genome, pr.ranges))
}
