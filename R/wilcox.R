# (random_numbers <- runif(30, min = 0.2, max = 5))
# alternative <- "two.sided"
# exact <- TRUE
#
# result_list <- list(
#   raw = wilcox.test(random_numbers, mu = 1, paired = FALSE, alternative = alternative, exact = exact)$p.value,
#   inverse_raw = wilcox.test(1/random_numbers, mu = 1, paired = FALSE, alternative = alternative, exact = exact)$p.value,
#   log = wilcox.test(log(random_numbers), mu = 0, paired = FALSE, alternative = alternative, exact = exact)$p.value,
#   inverse_log = wilcox.test(log(1/random_numbers), mu = 0, paired = FALSE, alternative = alternative, exact = exact)$p.value
# )
