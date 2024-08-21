#' Adam's Plot
#'
#' @return
#'
#' @import ggplot2
#' @import basetheme
#' @export
#'
#'
#'
adams.plot <- function() {
  ggplot2::theme(

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


#' Base Plot
#'
#' @param theme
#'
#' @export
#'
#' @note
#' default for theme = TRUE
#'
base.plot <- function(theme = TRUE) {
  adamplot <- basetheme("clean")
  adamplot$palette <- palette("Okabe-Ito")  # numbered colors - shades of grey
  adamplot$bg  <- "white"                         # some colors
  adamplot$fg  <- "gray20"                       # some colors
  adamplot$col.main <- "grey4"                    # some colors
  adamplot$col.axis <- "grey4"                   # some colors
  adamplot$col.lab  <- "grey4"                   # some colors
  adamplot$family   <-  "mono"                    # change font
  # adamplot$lab      <-  c(5,5,7)                # num ticks on axes
  adamplot$cex.axis <-  0.8                       # smaller axis labels
  adamplot$las      <-  1                         # 1 for always horizontal axis labels
  adamplot$rect.border <- "grey4"                 # box around the plot
  adamplot$rect.lwd    <- 1                       # ticker border
  adamplot$font.main <-  1                        # font for main title
  adamplot$pch <- "."                              # symbol option
  adamplot$cex <- 0.75

  if (theme == FALSE) {
    return(basetheme("clean"))
  } else {return(basetheme(adamplot))}
}

