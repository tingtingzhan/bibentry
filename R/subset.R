

#' @title Subset \link[utils]{bibentry} and/or \link[utils]{citation}
#' 
#' @param x a \link[utils]{bibentry} or \link[utils]{citation} object
#' 
#' @param subset ..
#' 
#' @param ... ..
#' 
#' @details
#' 
#' Function [subset.bibentry()] ..
#' 
#' Function [subset.citation()] performs [subset.bibentry()] first, 
#' then retains `attr(., which = 'package')`.
#' 
#' @examples
#' (b1 = 'rmarkdown' |> citation())
#' b1 |> subset(subset = (bibtype != 'Manual'))
#' b1 |> subset(subset = (bibtype == 'Manual'))
#' 
#' (b2 = 'ggplot2' |> citation())
#' b2 |> subset(subset = (bibtype == 'Book'))
#' 
#' @keywords internal
#' @name subset_bibentry
#' @export subset.bibentry
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


#' @rdname subset_bibentry
#' @export subset.citation
#' @export
subset.citation <- function(x, ...) {
  z <- NextMethod(generic = 'subset') # [subset.bibentry()]
  # read carefully
  # ?utils::citation
  # ?utils:::.citation
  attr(z, which = 'package') <- attr(x, which = 'package', exact = TRUE)
  return(z)
}



