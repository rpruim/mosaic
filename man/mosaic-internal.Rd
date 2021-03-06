% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/integrateODE.R, R/symbolicInt.R
\name{fetchDynamics}
\alias{fetchDynamics}
\alias{dynamicsFunction}
\alias{rkFunction}
\alias{.makeNice}
\title{construct a function representing the dynamics}
\usage{
fetchDynamics(x)

dynamicsFunction(DE, additionalAssignments = list())

rkFunction(DE, additionalArguments = list())

.makeNice(form, params = all.vars(form))
}
\arguments{
\item{x}{a list}

\item{DE}{representation of DE, the result of fetchDynamics}

\item{additionalAssignments, }{a list
return a function}

\item{DE}{representation of DE, the result of fetchDynamics}

\item{additionalAssignments, }{a list
return a function}
}
\value{
a list with two slots: names and functions
}
\description{
parameters are stored as extra arguments
the order of the dynamical variables (and "t") is important and will be used
later

Create a functions with a vector argument of state, for use in rk()

Simplifying expressions, e.g. pure numbers go to numbers
Written by Aaron Mayerson, May 2013
}
\keyword{internal}
