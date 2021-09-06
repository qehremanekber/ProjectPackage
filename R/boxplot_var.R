#' @param feat
#' @param df
#' @param quality_bin
#' @import plyr
#' @import dplyr
#' @import ggplot2
#' @import tidyr
#' @import GGally
#' @export


boxplot_var <- function(feat, df, quality_bin){
  df %>%
    ggplot(aes_string(x = as.factor('quality_bin'), y = feat, color = 'quality_bin')) +
    geom_boxplot(outlier.color = "darkred", notch = FALSE) +
    labs(title = paste0("Boxplot of feature: ", feat)) + ylab(feat) + xlab("Quality (1 = good, 2 = bad)") +
    theme(legend.position = "none", axis.title.x = element_blank()) +
    theme_minimal()
}
