# Cargamos las librerías
library(sf)

# Importo los datos
tabla_datos <- st_read("data/raw/nodos_carretera.shp")

# Vemos los metadatos del shapefile utilizando las funciones st_geometry_type(), 
# st_crs() and st_bbox().

# Primero veremos el tipo de geometría
st_geometry_type(tabla_datos)

# Ahora veremos el sistema de coordenadas de referencia (CRS)
st_crs(tabla_datos)

# Ahora veremos la extensión de nuestros datos
st_bbox(tabla_datos)

# Graficar un shapefile
library(ggplot2)

ggplot() + 
  geom_sf(data = tabla_datos, size = 2, color = "red") + 
  ggtitle("Nodos en la carretera") + 
  coord_sf()
