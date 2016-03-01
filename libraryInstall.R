
#devtools is needed to install packages off of github.
install.packages('devtools')

library(devtools)
#installing off of github
install_github('rCharts', 'ramnathv')
install_github( 'rstudio/leaflet')



library(rCharts)
library(leaflet)

#creating the actual map of csueb
map3 <- leaflet() %>% addTiles() 
%>% setView(lat = 37.65602, lng = -122.05415, zoom = 13) 
%>% addMarkers(lat = 37.65602,lng = -122.05415, popup = "<p> Hello from CSU East Bay </p>")

#running the actual map
map3


