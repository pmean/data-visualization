suppressMessages(suppressWarnings(library(dplyr)))
suppressMessages(suppressWarnings(library(ggplot2)))
suppressMessages(suppressWarnings(library(knitr)))
suppressMessages(suppressWarnings(library(magrittr)))
suppressMessages(suppressWarnings(library(readr)))
pd_text <- "This image was produced by Steve Simon and is placed in the public domain. You are welcome to use this image any way you see fit. An acknowledgement would be appreciated, but is not required."
initiate_image <- function() {
  fn <- opts_current$get("label")
  png(filename=paste0("../images/r/", fn, ".png"))
  return(invisible(fn))
}
finalize_image <- function(caption="") {
  fn <- opts_current$get("label")
  quiet <- dev.off()
  write(pd_text, file=paste0("../images/r", fn, ".txt"))
  display_image <<- paste0("![", caption, "](../images/r/", fn, ".png)")
}
f <- "https://dasl.datadescription.com/download/data/3275"
saratoga_houses <- read.table(f, header=TRUE, sep="\x09")
saratoga_houses$i <- 1:1057
