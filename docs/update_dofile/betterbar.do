*https://worldbank.github.io/stata/

clear
set more off

ssc install betterbar
sysuse auto.dta , clear
betterbarci ///
  headroom trunk mpg ///
  , over(foreign) legend(on)
