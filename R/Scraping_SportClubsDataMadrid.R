#How to collect data related to sport associations/clubs from www.madrid.es:

library(rvest)
clubs <- read_html("http://www.madrid.es/portales/munimadrid/es/Samur/Asociaciones-deportivas?vgnextfmt=default&vgnextoid=7b26b882504ed010VgnVCM100000171f5a0aRCRD&vgnextchannel=84516c77e7d2f010VgnVCM1000000b205a0aRCRD")

clubs %>% html_nodes("title")
clubs %>% html_nodes('div.event-location')


## I need to collect information from he following object: <div class="event-location">


pages <- ceiling(180/25) # Total number of pages calculation (there are 25 items per page and 180 items)
clubs_df <- data.frame()

for (page in (0:pages)) {
  
  print(paste0("getting data from page#", page))
  URL <- paste0("http://www.madrid.es/portales/munimadrid/es/Samur/Asociaciones-deportivas/?vgnextfmt=default&vgnextoid=7b26b882504ed010VgnVCM100000171f5a0aRCRD&vgnextchannel=84516c77e7d2f010VgnVCM1000000b205a0aRCRD&page=",page)
  
  clubs_page_nodes <- read_html(URL) %>% html_nodes('div.event-location')
  

  longitud <- clubs_page_nodes %>% html_attr("data-longitude")
  direction <- clubs_page_nodes %>% html_attr("data-direction") 
  name <- clubs_page_nodes %>% html_attr("data-name") 
  latitude <- clubs_page_nodes %>% html_attr("data-latitude") 
  phone <- clubs_page_nodes %>% html_attr("data-phone") 
  

  tmp <- data.frame(name, longitud, latitude, direction, phone)
    if (page==0) {
     clubs_df <- data.frame(tmp)
   } else {
    clubs_df <- rbind(clubs_df, tmp)
   }

}

head(clubs_df)
