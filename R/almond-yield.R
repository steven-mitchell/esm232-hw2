#' @param T minimum temperature for the month of February in Celsius
#' @param P precipitation value for the month of January in millimeters

AY = function(T,P){
  ayield = -0.015(T) - 0.0046(T^2) - 0.07(P) + 0.0043(P^2) + 0.28
  
  #error checking
  if (T < -10 || T > 40) {
    stop("Temperature must be between -10 and 40 degrees Celsius.")
  }
  
  if (P < 0 || P > 500) {
    stop("Precipitation must be between 0 and 500 millimeters.")
  }
  
  return(ayield)
}

