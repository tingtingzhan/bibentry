

#' @title Sink \link[utils]{bibentry} To a `.bib` File
#' 
#' @param x a \link[utils]{bibentry} object
#' 
#' @param file \link[base]{character} scalar, bibliography file name `'*.bib'`
#' 
#' @param ... additional parameters, currently not in use
#' 
#' @note
#' Too bad the function \link[base]{sink} is not an `S3` generic.
#' 
#' @keywords internal
#' @export
sink_bibentry <- function(x, file = 'bibliography.bib', ...) {
  if (file.exists(file)) file.remove(file) # without warning
  file |> file.create()
  file |> sink()
  x |> toBibtex() |> print()
  sink()
}



