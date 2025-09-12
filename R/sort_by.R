
# S3 method dispatches for \link[utils]{bibentry}


#' @title Sort \link[utils]{bibentry} By
#' 
#' @param x a \link[utils]{bibentry} object
#' 
#' @param y \link[base]{character} scalar
#' 
#' @param ... additional parameters of function \link[base]{order}
#' 
#' @details
#' 
#' Function [sort_by.bibentry()] sorts multiple citations of one package by some criteria (default being `'year'`).
#' 
#' @examples
#' 'rmarkdown' |> citation()
#' 'rmarkdown' |> citation() |> sort_by(y = 'year', decreasing = TRUE)
#' @keywords internal
#' @export sort_by.bibentry
#' @export
sort_by.bibentry <- function(x, y = 'year', ...) {
  
  nx <- length(x)
  if (nx == 1L) return(x)
  
  if (!is.character(y) || length(y) != 1L || is.na(y) || !nzchar(y)) stop('`y` must be len-1 character')
  
  o <- x |>
    unclass() |> # to avoid using ?utils:::`[[.bibentry`
    vapply(FUN = \(i) i[[y]], FUN.VALUE = '') |> # all fields are \link[base]{character}
    order(...)
  
  # um, if (y == 'bibtype'), we need to grab the base::attr ..
  
  return(x[o, drop = FALSE]) # utils:::`[.bibentry`
  
}




