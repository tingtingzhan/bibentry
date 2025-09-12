#' @title Use Package as Key in \link[utils]{citation}
#' 
#' @param x a \link[utils]{citation} object
#' 
#' @returns
#' Function [package2key()] returns a \link[utils]{citation} object.
#' 
#' @examples
#' citation() |> toBibtex()
#' citation() |> package2key() |> toBibtex()
#' 'rmarkdown' |> citation() |> toBibtex()
#' 'rmarkdown' |> citation() |> package2key() |> toBibtex()
#' @keywords internal
#' @export
package2key <- function(x) {
  # read carefully
  # ?utils::citation
  # ?utils:::.citation
  if (!inherits(x, 'citation')) stop('input must be package citation')
  # length(x) must be 1, by design of ?utils::citation
  pkg <- attr(x, which = 'package', exact = TRUE)
  key(x) <- if (pkg == 'base') 'R' else pkg
  return(x)
}