suppressMessages(suppressWarnings(library(dplyr)))
suppressMessages(suppressWarnings(library(ggplot2)))
suppressMessages(suppressWarnings(library(knitr)))
suppressMessages(suppressWarnings(library(magrittr)))
suppressMessages(suppressWarnings(library(readr)))
pd_text <- "This image was produced by Steve Simon and is placed in the public domain. You are welcome to use this image any way you see fit. An acknowledgement would be appreciated, but is not required."
initiate_image <- function() {
  fn <- opts_current$get("label")
  png(filename=paste0("../images/r/", fn, ".png"))
  return(fn)
}
finalize_image <- function() {
  quiet <- dev.off()
  write(pd_text, file=paste0("../images/r/", fn, ".txt"))
}
