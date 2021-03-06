#' Theme for generating powerpoint figures
#' 
#' White background with black text.
#' 
#' @param base_size the base font size
#' @param base_family base font family
#' 
#' @seealso \code{theme_set} \code{theme_grey} \code{\link{theme_man}}
#'
#' @export theme_dark_ppt
#' 
#' @import ggplot2

theme_dark_ppt <- function(base_size = 32, base_family = "") {
  theme_grey(base_size = base_size, base_family = base_family) %+replace% 
    theme(plot.background = element_rect(fill='transparent', colour='transparent', size=2), 
          axis.text.x  = element_text(size=32, color="black"), 
          ## For forest plots, we need smaller y axis text for labels
          axis.text.y  = element_text(size=32, color="black"),
          #axis.text.y  = element_text(size=16, color="black"),
          axis.line = element_line(color="black", size=1),
          strip.text = element_text(size=16),
          panel.border = element_blank(),
          panel.background = element_rect(fill = "white", colour = "black", size=1), 
          axis.ticks = element_line(colour = "black", size = 1), 
          legend.position="none",
          panel.grid.major.x =  element_blank(),
          panel.grid.major.y =  element_blank(),
          panel.grid.minor =  element_blank()
          )
}

#===========================================================================================
# For reference, this is the theme_grey definition, which has most, if not all possible
# theme elements.
# 
# theme_grey
# function (base_size = 12, base_family = "") {
#   theme(line = element_line(colour = "black", size = 0.5, linetype = 1, 
#                             lineend = "butt"), 
#         rect = element_rect(fill = "white", colour = "black", size = 0.5, linetype = 1), 
#         text = element_text(family = base_family, face = "plain", colour = "black", 
#                             size = base_size, hjust = 0.5, vjust = 0.5, angle = 0, 
#                             lineheight = 0.9), 
#         
#         axis.text = element_text(size = rel(0.8),                                                                                                                                                          colour = "grey50"), strip.text = element_text(size = rel(0.8)), 
#         axis.line = element_blank(), 
#         axis.text.x = element_text(vjust = 1), 
#         axis.text.y = element_text(hjust = 1), 
#         axis.ticks = element_line(colour = "grey50"), 
#         axis.title.x = element_text(), 
#         axis.title.y = element_text(angle = 90), 
#         axis.ticks.length = unit(0.15, "cm"), 
#         axis.ticks.margin = unit(0.1,"cm"), 
#         
#         legend.background = element_rect(colour = NA), 
#         legend.margin = unit(0.2, "cm"), 
#         legend.key = element_rect(fill = "grey95", colour = "white"), 
#         legend.key.size = unit(1.2, "lines"), 
#         legend.key.height = NULL, 
#         legend.key.width = NULL, 
#         legend.text = element_text(size = rel(0.8)), 
#         legend.text.align = NULL, 
#         legend.title = element_text(size = rel(0.8), face = "bold", hjust = 0), 
#         legend.title.align = NULL, 
#         legend.position = "right", 
#         legend.direction = NULL, 
#         legend.justification = "center", 
#         legend.box = NULL, 
#         
#         panel.background = element_rect(fill = "grey90",colour = NA), 
#         panel.border = element_blank(), 
#         panel.grid.major = element_line(colour = "white"), 
#         panel.grid.minor = element_line(colour = "grey95", size = 0.25), 
#         panel.margin = unit(0.25, "lines"), panel.margin.x = NULL, 
#         panel.margin.y = NULL, 
#         
#         strip.background = element_rect(fill = "grey80", colour = NA), 
#         strip.text.x = element_text(), 
#         strip.text.y = element_text(angle = -90), 
#         
#         plot.background = element_rect(colour = "white"), 
#         plot.title = element_text(size = rel(1.2)), 
#         plot.margin = unit(c(1, 1, 0.5, 0.5), "lines"), complete = TRUE)
# }