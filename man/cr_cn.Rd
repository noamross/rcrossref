% Generated by roxygen2 (4.0.1): do not edit by hand
\name{cr_cn}
\alias{cr_cn}
\title{Search the CrossRef Metatdata API.}
\usage{
cr_cn(dois, format = c("rdf-xml", "turtle", "citeproc-json", "text", "ris",
  "bibtex", "crossref-xml", "datacite-xml", "bibentry"), style = NULL,
  locale = "en-US", .progress = "none", ...)
}
\arguments{
\item{dois}{Search by a single DOI or many DOIs.}

\item{format}{name of the format.}

\item{style}{a CSL style (for text format only)}

\item{locale}{language locale}

\item{progress}{Show a \code{plyr}-style progress bar? Options are "none", "text", "tk", "win, and "time".  See \link[pkg:plyr]{create_progress_bar} for details of each.}

\item{...}{optional additional curl options (debugging tools mostly) passed on to httr::GET}
}
\description{
Search the CrossRef Metatdata API.
}
\details{
See \url{http://www.crosscite.org/cn/} for more info on this
  	Crossref Content Negotiation API service.
}
\examples{
\dontrun{
cr_cn(dois="10.1126/science.169.3946.635", format="citeproc-json")
cr_cn("10.1126/science.169.3946.635", "rdf-xml")
cr_cn("10.1126/science.169.3946.635", "crossref-xml")
cr_cn("10.1126/science.169.3946.635", "bibtex")
# return an R bibentry type
cr_cn("10.1126/science.169.3946.635", "bibentry")
# return an apa style citation - eg. not working right now., 406 error
cr_cn("10.1126/science.169.3946.635", "text", "apa")

# example with many DOIs
dois <- cr_r(10)
cr_cn(dois, "text", "apa")
cr_cn(dois, "text", "apa", .progress="time")
}
}
\author{
Scott Chamberlain \email{myrmecocystus@gmail.com}
}

