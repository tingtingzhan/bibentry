


# @param y \link[base]{character} scalar, currently supported are `'year'` and `'bibtype'`
# @seealso \link[utils]{sort.bibentry}
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




