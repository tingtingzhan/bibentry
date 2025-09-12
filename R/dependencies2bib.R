

#' @title Write All Denpendency's Citatation to `.bib` File
#' 
#' @param package \link[base]{character} scalar
#' 
#' @param path \link[base]{character} scalar, directory of the output `.bib` file
#' 
#' @param ... additional parameters, currently of no use
#' 
#' @examples
#' \dontrun{
#' 'nlme' |> dependencies2bib() # need to have repo to pass devtools::check
#' }
#' @keywords internal
#' @importFrom tools package_dependencies
#' @importFrom utils installed.packages citation toBibtex
#' @export
dependencies2bib <- function(
    package,
    path = tempdir(),
    ...
) {
  
  # bib <- tempfile(pattern = package, tmpdir = path, fileext = '.bib') # no!!
  bib <- file.path(path, sprintf(fmt = '%s.bib', package))
  bib |>
    file.create()
  
  b0 <- package |> 
    citation() |>
    package2key()
  
  b1 <- package |>
    package_dependencies(which = 'all') |>
    unlist(use.names = FALSE) |>
    intersect(y = installed.packages() |> rownames()) |> 
    setdiff(y = installed.packages(priority = 'base') |> rownames()) |>
    lapply(FUN = \(i) i |> citation() |> package2key()) |>
    c(list(citation() |> package2key())) |> # vanilla R citation 
    do.call(what = c, args = _) # ?utils:::c.bibentry
  
  bib |> sink()
  c(b0, b1) |> # ?utils:::c.bibentry
    toBibtex() |>
    print()
  sink()
  
  bib |>
    sprintf(fmt = 'open \'%s\'') |>
    system()
  
  return(invisible(bib))
  
}