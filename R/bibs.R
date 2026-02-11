

#' @title Literature
#' 
#' @keywords internal
#' @name literature
#' @export
.fisher22 <- \() {
  bibentry(
    bibtype = 'Article', key = 'Fisher22',
    author = 'Ronald Aylmer Fisher',
    journal = 'Journal of the Royal Statistical Society',
    number = '1',
    pages = '87--94',
    title = 'On the Interpretation of $\\chi^2$ from Contingency Tables, and the Calculation of $p$',
    volume = '85',
    year = '1922',
    doi = '10.2307/2340521'
  )
}

#' @rdname literature
#' @export
.holm79 <- \() {
  bibentry(bibtype = 'Article', key = 'Holm79',
           url = 'http://www.jstor.org/stable/4615733',
           author = 'Sture Holm',
           journal = 'Scandinavian Journal of Statistics',
           number = '2',
           pages = '65--70',
           title = 'A Simple Sequentially Rejective Multiple Test Procedure',
           volume = '6',
           year = '1979'
  )  
}


#' @rdname literature
#' @export
.hochberg88 <- \() {
  bibentry(bibtype = 'Article', key = 'Hochberg88',
           author = 'Yosef Hochberg',
           title = 'A sharper {B}onferroni procedure for multiple tests of significance',
           journal = 'Biometrika',
           volume = '75',
           number = '4',
           pages = '800-802',
           year = '1988',
           month = '12',
           doi = '10.1093/biomet/75.4.800'
  )
}


#' @rdname literature
#' @export
.hommel88 <- \() {
  bibentry(bibtype = 'Article', key = 'Hommel88',
           author = 'Gerhard Hommel',
           title = 'A stagewise rejective multiple test procedure based on a modified Bonferroni test',
           journal = 'Biometrika',
           volume = '75',
           number = '2',
           pages = '383-386',
           year = '1988',
           month = '06',
           doi = '10.1093/biomet/75.2.383'
  )
}


#' @rdname literature
#' @export
.benjamini_hochberg95 <- \() {
  bibentry(bibtype = 'Article', key = 'BenjaminiHochberg95',
           author = 'Yoav Benjamini and Yosef Hochberg',
           title = 'Controlling the False Discovery Rate: A Practical and Powerful Approach to Multiple Testing',
           journal = 'Journal of the Royal Statistical Society: Series B (Methodological)',
           volume = '57',
           number = '1',
           pages = '289-300',
           year = '1995',
           month = '12',
           doi = '10.1111/j.2517-6161.1995.tb02031.x'
  )
}

#' @rdname literature
#' @export
.benjamini_yekutieli01 <-\() {
  bibentry(bibtype = 'Article', key = 'BenjaminiYekutieli01',
           author = 'Yoav Benjamini and Daniel Yekutieli',
           title = 'The control of the false discovery rate in multiple testing under dependency',
           volume = '29',
           journal = 'The Annals of Statistics',
           number = '4',
           pages = '1165 -- 1188',
           year = '2001',
           doi = '10.1214/aos/1013699998'
  )
}

#' @rdname literature
#' @export
.lawley_maxwell71 <- \() {
  bibentry(
    bibtype = 'Article', key = 'LawleyMaxwell71',
    title = 'Factor Analysis as a Statistical Method',
    journal = 'Journal of the Royal Statistical Society. Series D (The Statistician)',
    author = 'D. N. Lawley and A. E. Maxwell', 
    year = '1962',
    doi = '10.2307/2986915',
    pages = '209--229',
    volume = '12', number = '3',
    publisher = 'Royal Statistical Society, Wiley'
    #SN  - 00390526, 14679884
  )
}


#' @rdname literature
#' @export
.tukey49 <- \() {
  bibentry(
    bibtype = 'Article', key = 'Tukey49',
    author = 'John W. Tukey',
    journal = 'Biometrics',
    number = '2',
    pages = '99--114',
    title = 'Comparing Individual Means in the Analysis of Variance',
    volume = '5',
    year = '1949',
    doi = '10.2307/3001913'
  )
}