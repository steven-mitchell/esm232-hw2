#Almond Profit Model

#'@param T minimum temperature for the month of February in Celsius
#'@param P precipitation for the month of February in mm
#'@param baseline_yield base yield for the almond variety in tons/acre
#'@param ppt price of almonds in $/ton
#'@param area area of the almond orchard in acres
#'@param cost cost per acre for almond production in $

almond_profit = function(T, P, baseline_yield = 1.125, ppt = 3000, area = 100, cost = 4000){
  #compute the yield anomaly
  anomaly = almondyield(T, P)
  yield = baseline_yield + anomaly
  
  #compute the profit
  revenue = yield * ppt * area
  cost = cost * area
  
  #compute profit
  profit = revenue - cost
  return(profit)
  
} 



