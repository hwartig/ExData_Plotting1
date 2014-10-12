save_dev_to_file <- function(filename) {
  dev.copy(
    png,
    file = filename,
    width = 480,
    height = 480
  )
  dev.off()
}