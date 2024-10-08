% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Calibration.R
\name{RotCensor}
\alias{RotCensor}
\title{Rotation Censor}
\usage{
RotCensor(
  img,
  center.offset = 0,
  cut.buffer = 0.02,
  fixed.rotation = TRUE,
  fixed.width = 1000
)
}
\arguments{
\item{img}{The image which should be censored}

\item{center.offset}{Rotational shift in rows. Can be retrieved from 'RotShiftDet()', reference image is 0 offset}

\item{cut.buffer}{ratio of image dimensions that will be cut if fixed.rotation=FALSE}

\item{fixed.rotation}{specifies whether censoring is applied to fixed output dimensions (=TRUE) or proportional to input dimensions (=FALSE)}

\item{fixed.width}{if fixed.rotation is TRUE, fixed.width specifies the final amount of rows centered at center.offset}
}
\value{
a raster
}
\description{
Rotation Censor
}
\examples{
data(seg_Oulanka2023_Session01_T067)
img = terra::rast(seg_Oulanka2023_Session01_T067)
censored.raster = RotCensor(img,center.offset = 120, cut.buffer = 0.02)
}
