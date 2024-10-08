% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Zonestats.R
\name{px.sum}
\alias{px.sum}
\title{counts all pixels in a segmented image}
\usage{
px.sum(root.zone)
}
\arguments{
\item{root.zone}{one layer raster}
}
\value{
a numeric value
}
\description{
counts all pixels in a segmented image
}
\examples{
data(seg_Oulanka2023_Session01_T067)
img = terra::rast(seg_Oulanka2023_Session01_T067[[2]])
rootpixel  = px.sum(img)
}
