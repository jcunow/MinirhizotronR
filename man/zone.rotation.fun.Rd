% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/CreateZoning.R
\name{zone.rotation.fun}
\alias{zone.rotation.fun}
\title{RotationZones}
\usage{
zone.rotation.fun(rootpic, k = c(3, 4), kk = 5, mm = c(2000, 5000))
}
\arguments{
\item{rootpic}{the "to be cut" image}

\item{k}{specify which cuts to keep. Must be <= nn}

\item{kk}{number of total cuts along rotation axis}

\item{mm}{limit the region along the tube = c(start,end). Adjust to your tube dimensions!}
}
\value{
raster, cut along rotation axis
}
\description{
RotationZones
}
\examples{
data(seg_Oulanka2023_Session01_T067)
img = terra::rast(seg_Oulanka2023_Session01_T067)
rotationZone = zone.rotation.fun(img, k = c(1,2), kk = 7, mm = c(1500,3000))
}
