#'Read GEDI Level3 data (Gridded Level 2 metrics)
#'
#'@description This function reads GEDI level3 products: Gridded Level 2 metrics
#'
#'@usage readLevel3(level3path)
#'
#'@param level3path File path pointing to GEDI level3 data. Data in HDF5 Hierarchical Data Format (.h5).
#'
#'@return Returns an S4 object of class [`gedi.level3-class`] containing GEDI level1B data.
#'
#'@seealso [`hdf5r::H5File-class`] in the \emph{hdf5r} package and
#'\url{https://lpdaac.usgs.gov/products/gedi01_bv002/}
#'
#'@examples # TODO: Update this to be level3
#'# Specifying the path to GEDI level1B data (zip file)
#'outdir = tempdir()
#'level1B_fp_zip <- system.file("extdata",
#'                   "GEDI01_B_2019108080338_O01964_T05337_02_003_01_sub.zip",
#'                   package="rGEDI")
#'
#'# Unzipping GEDI level1B data
#'level1Bpath <- unzip(level1B_fp_zip,exdir = outdir)
#'
#'# Reading GEDI level1B data (h5 file)
#'level1b<-readLevel1B(level1Bpath=level1Bpath)
#'
#'close(level1b)
#'@import hdf5r
#'@export
readLevel3 <-function(level3path) {
  level3_h5 <- hdf5r::H5File$new(level3path, mode = 'r')
  level3<- new("gedi.level3", h5 = level1b_h5)
  return(level3)
}
