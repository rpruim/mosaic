% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/integrateODE.R
\name{integrateODE}
\alias{integrateODE}
\title{Integrate ordinary differential equations}
\usage{
integrateODE(dyn, ..., tdur)
}
\arguments{
\item{dyn}{a formula specifying the dynamics, e.g. \code{dx ~ -a*x} for $dx/dt = -ax$.}

\item{tdur}{the duration of integration.  Or, a list of the form
\code{list(from=5,to=10,dt=.001)}}

\item{\ldots}{arguments giving additional formulas for dynamics in other variables,
assignments of parameters, and assignments of initial conditions}
}
\value{
a list with splined function of time for each dynamical variable
}
\description{
A formula interface to integration of an ODE with respect to "t"
}
\details{
The equations must be in first-order form.  Each dynamical equation uses
a formula interface with the variable name given on the left-hand side of the
formula, preceded by a \code{d}, so use \code{dx~-k*x} for exponential decay.
All parameters (such as \code{k}) must be assigned numerical values in the
argument list.  All dynamical variables must be assigned initial conditions in the
argument list.  The returned value will be a list with one component named after each
dynamical variable.  The component will be a spline-generated function of \code{t}.
}
\examples{
soln = integrateODE(dx~r*x*(1-x/k), k=10, r=.5, tdur=20, x=1)
soln$x(10)
soln$x(30) # outside the time interval for integration
plotFun(soln$x(t)~t, tlim=range(0,20))
soln2 = integrateODE(dx~y, dy~-x, x=1, y=0, tdur=10)
plotFun(soln2$y(t)~t, tlim=range(0,10))
# SIR epidemic
epi = integrateODE(dS~ -a*S*I, dI ~ a*S*I - b*I, a=0.0026, b=.5, S=762, I=1, tdur=20)
}
