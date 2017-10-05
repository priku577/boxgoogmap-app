convert <- function(adnu) {
  if(grepl("[[:digit:]]",adnu)){
    address(adnu)}
  else if (grepl("[[:punct:]]",adnu)){
    coord(adnu)}
}
