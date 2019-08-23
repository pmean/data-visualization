suppressMessages(suppressWarnings(library(dplyr)))
suppressMessages(suppressWarnings(library(ggplot2)))
suppressMessages(suppressWarnings(library(knitr)))
suppressMessages(suppressWarnings(library(magrittr)))
suppressMessages(suppressWarnings(library(readr)))
pd_text <- "This image was produced by Steve Simon and is placed in the public domain. You are welcome to use this image any way you see fit. An acknowledgement would be appreciated, but is not required."
initiate_image <- function() {
  if (redraw_graphs==FALSE) return
  fn <- opts_current$get("label")
  png(filename=paste0("../images/r/", fn, ".png"))
  return(invisible(fn))
}
finalize_image <- function(caption="") {
  if (redraw_graphs==FALSE) return
  fn <- opts_current$get("label")
  quiet <- dev.off()
  write(pd_text, file=paste0("../images/r", fn, ".txt"))
  display_image <<- paste0("![", caption, "](../images/r/", fn, ".png)")
}
