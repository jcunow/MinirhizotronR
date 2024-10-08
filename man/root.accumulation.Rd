% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/LilHelpers.R
\name{root.accumulation}
\alias{root.accumulation}
\title{Root accumulation Curve}
\usage{
root.accumulation(x, group, depth, variable, stdrz = "counts")
}
\arguments{
\item{x}{data.frame must include group,depth, and variable columns}

\item{group}{specify the grouping variable e.g., Plot. Can be multiple groups in a vector.}

\item{depth}{specify column name which includes depth values}

\item{variable}{accumulating values}

\item{stdrz}{choose between "counts" return of accumulative amount, "additive" returns the added the accumulative share 0-1, with "relative", all accumulative values sum to 1}
}
\value{
data.frame with one added column "cs" containing the accumulated values
}
\description{
Root accumulation Curve
}
\examples{
df = data.frame(depth = c(seq(0,80,20),seq(0,80,20)),
               Plot = c(rep("a",5),rep("b",5)), rootpx = c(5,50,20,15,5,10,40,30,10,5) )
accum_root = root.accumulation(df,group = "Plot", depth = "depth", variable = "rootpx")
}
