#' Data frame of genes in the phenylpropanoid pathway
#'
#' @format Data frame
#' #' \describe{
#'   \item{AT}{Arabidopsis AT number}
#'   \item{Direction}{(1:positive; 2:negative; 3:other}
#'   \item{Mode}{1:enzyme; 2:transcription; 3:protein; 4:other}
#'   \item{Branch}{1:lignin; 2:flavonoid-anthocyanin; 3:coumarin, 4:cutin-suberin; 5:common}
#'   \item{Evidence}{1:experiment; 2:prediction; 3:other)}
#' }
"phenylpropanoid_gene_table"


#' HY5 binding site motif M08407_2.00 from CIS-BP, based on JASPAR
#'
#' @format Universalmotif object
"HY5"


#' 127 genes from heatmap Figure 3C right: DEGs in HY5ox HY5-VP16 and HY5-SRDX with HY5 binding peak (2000bp upstream to the ATG or in gene body), in all 8 ChIP-seq samples
#'
#' @format Character vector
"high_confidence_HY5_genes"


#' 297 HY5_predicted_targets from Burko et al. 2020 Supp Material S2
#'
#' @format Character vector
"HY5_predicted_targets"


#' log2 FC of gene expression in hy5 mutant and ox lines
#'
#' @format Data frame
#' #' \describe{
#'   \item{Gene}{Arabidopsis AT number}
#'   \item{OX}{(Overexpression}
#'   \item{VP16}{Activation domain}
#'   \item{SRDX}{Transcriptional silencing motif (EAR repressor motif of SUPERMAN gene)}
#' }
"HY5_mutant_comparisons"

#' Grange object from Arabidopsis_thaliana.TAIR10.47.gtf
#'
#' @source \url{https://plants.ensembl.org/Arabidopsis_thaliana/Info/Index}
"TAIR10_Grange"
