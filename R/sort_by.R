

#' @title Sort \link[utils]{bibentry} By
#' 
#' @param x a \link[utils]{bibentry} object
#' 
#' @param y \link[base]{character} scalar, currently supported are `'year'` and `'bibtype'`
#' 
#' @param ... additional parameters of function \link[base]{order}
#' 
#' @details
#' 
#' Function [sort_by.bibentry()] sorts multiple citations of one package by some criteria.
#' 
#' @seealso \link[utils]{sort.bibentry}
#' 
#' @examples
#' 'rmarkdown' |> citation()
#' 'rmarkdown' |> citation() |> sort_by(y = 'year', decreasing = TRUE)
#' 'rmarkdown' |> citation() |> sort_by(y = 'bibtype')
#' @keywords internal
#' @export sort_by.bibentry
#' @export
sort_by.bibentry <- function(x, y = c('year', 'bibtype'), ...) {
  
  nx <- length(x)
  if (nx == 1L) return(x)
  
  y <- match.arg(y)
  
  yval <- switch(
    EXPR = y,
    year = { # and others
      x |>
        unclass() |> # to avoid using ?utils:::`[[.bibentry`
        vapply(FUN = \(i) i[[y]], FUN.VALUE = '') # all fields are \link[base]{character}
    }, bibtype = { # and others
      x |>
        unclass() |>
        vapply(FUN = attr, which = y, exact = TRUE, FUN.VALUE = '')
    })
    
  return(x[order(yval, ...), drop = FALSE]) # utils:::`[.bibentry`
  
}




