

#' @export
subset.bibentry <- function(x, subset, ...) {
  
  e <- substitute(subset)
  if (!all(all.vars(e) %in% c('bibtype'))) stop('unsupported criterion')
  
  x0 <- x |>
    unclass() # avoid dispatching to ?utils:::`[[.bibentry`
  
  bibtype <- x0 |>
    vapply(FUN = attr, which = 'bibtype', exact = TRUE, FUN.VALUE = '')
  
  return(x[eval(e), drop = FALSE]) # ?utils:::`[.bibentry`
  # len-0 compatible
  
}


#' @export
subset.citation <- function(x, ...) {
  z <- NextMethod(generic = 'subset') # [subset.bibentry()]
  # read carefully
  # ?utils::citation
  # ?utils:::.citation
  attr(z, which = 'package') <- attr(x, which = 'package', exact = TRUE)
  return(z)
}



