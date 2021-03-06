% Generated by roxygen2 (4.0.1): do not edit by hand
\name{cr_search}
\alias{cr_search}
\title{Search the CrossRef Metatdata API.}
\usage{
cr_search(query, doi = NULL, page = NULL, rows = NULL, sort = NULL,
  year = NULL, type = NULL)
}
\arguments{
\item{query}{Query terms.}

\item{doi}{Search by a single DOI or many DOIs.}

\item{page}{Page to return from results.}

\item{rows}{Number of records to return.}

\item{sort}{Sort either by "score" or "year".}

\item{year}{Year to search.}

\item{type}{Record type, e.g., "Journal Article" or "Journal Issue"}
}
\description{
Search the CrossRef Metatdata API.
}
\details{
See \url{http://search.labs.crossref.org/help/api} for more info on this
		Crossref API service.
}
\examples{
\dontrun{
cr_search(query = c("renear", "palmer"))

# limit to 4 results
cr_search(query = c("renear", "palmer"), rows = 4)

# get more results than standard
cr_search(query = c("renear", "palmer"), rows = 40)

# sort results by score
cr_search(query = c("renear", "palmer"), rows = 10, sort = "score")

# sort results by year
cr_search(query = c("renear", "palmer"), rows = 10, sort = "year")

# get results for a certain year
cr_search(query = c("renear", "palmer"), year = 2010)

# search by a single DOI
cr_search(doi = "10.1890/10-0340.1")

# search for many DOI's
cr_search(doi = c("10.1890/10-0340.1","10.1016/j.fbr.2012.01.001",
                  "10.1111/j.1469-8137.2012.04121.x"))

# find all the records of articles from a journal ISBN
cr_search(query = "1461-0248", type="Journal Article")
}
}
\author{
Scott Chamberlain \email{myrmecocystus@gmail.com}
}
\seealso{
\code{\link{cr_r}}, \code{\link{cr_citation}}, \code{\link{cr_search_free}}
}

