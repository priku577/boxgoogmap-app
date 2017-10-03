convert <- function(adnu) {
  if(grepl("[[:digit:]]",adnu)){
    address_lookup(adnu)}
  else if (grepl("[[:punct:]]",adnu)){
    coord_lookup(adnu)}
}
