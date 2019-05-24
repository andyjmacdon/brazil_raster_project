library("landscapemetrics")
library("raster")
library("rgdal")

raster.to.ESPG.3857 <- function(raster1){
  mercatorCRS <- CRS("+init=epsg:3857")
  newRaster <- projectRaster(raster1, crs=mercatorCRS, method = "ngb", res = 30, na.rm = TRUE)
  return(newRaster)
}