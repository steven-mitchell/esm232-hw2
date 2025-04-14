#' @param T minimum temperature for the month of February in Celsius
#' @param P precipitation value for the month of January in millimeters

almondyield = function(T,P){
  ayield = -0.015*T - 0.0046*(T^2) - 0.07*(P) + 0.0043*(P^2) + 0.28
  
  return(ayield)
}






