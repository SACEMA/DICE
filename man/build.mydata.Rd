% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fit_user_data_fxns.R
\name{build.mydata}
\alias{build.mydata}
\title{Read incidence data file and Build the DICE data list, mydata}
\usage{
build.mydata(filename = "data.csv", pop = 10000, epi_model = 1, Tg = 3,
  sigma = NULL)
}
\arguments{
\item{pop}{- Integer, population of the region for which incidence is provided}

\item{epi_model}{- integer 1 (SIR) or 2 (SEIR), default is 1}

\item{Tg}{- Numeric, generation time in days. Default is 3 days}

\item{sigma}{- inverse of of the latent period. Needed only for an SEIR model. Default 5 days}

\item{filenmae}{String - input csv file name.  Default 'data.csv'}
}
\value{
mydata - a DICE list
}
\description{
\code{build.mydata} Reads the user provided csv file with two columns: date and cases
The date format is: Year-month-day.
cases - integer number of cases
cadence can be anything including irregular
The code builds and populates the mydata DICE list
}
\examples{
mydata <- build.mydata(filename = "data.csv", pop = 1e5, epi_model = 2, Tg = 3., sigma = 5.)
}
