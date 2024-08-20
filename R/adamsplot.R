#' Adam's Plot
#'
#' @return
#'
#' @import ggplot2
#' @export
#'
#'
#'
adams.plot <- function() {
  theme(

    # add border 1)
    panel.border = element_rect(colour = "grey4", fill = NA, linetype = 1),

    # color background 2)
    panel.background = element_rect(fill = NA),

    # modify grid 3)
    #panel.grid.major.x = element_line(colour = "grey4", linetype = 3, size = 0.25),
    panel.grid.minor.x = element_blank(),
    # panel.grid.major.y =  element_line(colour = "grey4", linetype = 3, size = 0.25),
    panel.grid.minor.y = element_blank(),

    # modify text, axis and colour 4) and 5)
    axis.text = element_text(colour = "grey4", face = "italic", family = "Courier", size = 9),
    axis.title = element_text(colour = "grey4", family = "Courier", size = 9),
    plot.title = element_text(colour = "grey4", family = "Courier", size = 9),
    axis.ticks = element_line(colour = "grey4"),
    # legend at the bottom 6)
    legend.position = "bottom"

  )
}
