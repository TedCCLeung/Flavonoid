# Set up package -----------------------------------
#usethis::use_git()
#usethis::use_github()
#usethis::create_github_token()
#usethis::use_mit_license()

## CRAN Packages -----------------------------------
# usethis::use_package("eulerr", type = "Suggests")

# Tidyverse -----------------------------------
# usethis::use_package("stringr", min_version = "1.4.0")
# usethis::use_package("magrittr", min_version = "2.0.1")
# usethis::use_package("dplyr", min_version = "1.0.7")
# usethis::use_package("tibble", type = "Suggests")
# usethis::use_package("purrr", type = "Suggests")
# usethis::use_package("tidyr", min_version = "1.1.4")
# usethis::use_package("ggplot2", min_version = "3.3.5")
# usethis::use_package("roxygen2"); usethis::use_pipe(export = TRUE)

##Bioconductor -----------------------------------
# usethis::use_package("universalmotif", type = "Suggests")
# usethis::use_package("GenomicRanges", type = "Suggests")
# usethis::use_package("ggbio", type = "Suggests")
# usethis::use_package("BSgenome.Athaliana.TAIR.TAIR9", min_version = "1.3.1000", type = "Suggests")
# usethis::use_package("Biostrings", type = "Suggests")
# usethis::use_package("GenomeInfoDb", type = "Suggests")
# usethis::use_package("GenomicFeatures", type = "Suggests")

## Data -----------------------------------
# phenylpropanoid_gene_table <- utils::read.table("/Users/TedCCLeung/Documents/Projects/Photoperiod/1_exploratory/pheno.txt", sep = "\t", header = TRUE)
# usethis::use_data(phenylpropanoid_gene_table, overwrite = TRUE)

#TAIR10_Grange <- rtracklayer::import("R/Arabidopsis_thaliana.TAIR10.47.gtf", format = "gtf")
#usethis::use_data(TAIR10_Grange, compress = "xz")

## HY5 binding site -----------------------------------
# HY5 <- universalmotif::read_cisbp("/Users/TedCCLeung/Documents/Projects/Photoperiod/2_analysis/0_data/A_pipelineData/TFbinding/CIS-BP_20201005/pwms_all_motifs/M08407_2.00.txt")
# HY5["family"] <- "bZIP"
# HY5["name"] <- "HY5"
# usethis::use_data(HY5)

## HY5 Gene lists -----------------------------------
# high_confidence_HY5_genes <- read.table("hy5_peak_genes.txt")[, 1]
# usethis::use_data(high_confidence_HY5_genes, overwrite = TRUE)
#
# HY5_predicted_targets <- read.table("low_confidence_HY5_genes.txt")[, 1]
# usethis::use_data(HY5_predicted_targets)
#
# HY5_mutant_comparisons <- read.table("HY5_mutant_comparisons.txt", sep = "\t", header = TRUE)
# usethis::use_data(HY5_mutant_comparisons)

