

#' @examples
#' (b1 = 'rmarkdown' |> citation())
#' (b2 = 'ggplot2' |> citation())
#' 
#' b1 |> sort_by(y = 'year', decreasing = TRUE)
#' b1 |> sort_by(y = 'bibtype')
#' 
#' b1 |> subset(subset = (bibtype != 'Manual'))
#' b1 |> subset(subset = (bibtype == 'Manual'))
#' b2 |> subset(subset = (bibtype == 'Book'))
#' 
#' @keywords internal
#' @import utils
'_PACKAGE'


# '\u201c|\u201d' # quotation marks created by ?base::dQuote
# '\u2018|\u2019' # quotation marks created by ?base::sQuote

