*https://worldbank.github.io/stata/

clear
set more off

ssc install outwrite

sysuse auto.dta, clear
  reg price i.foreign##c.mpg
  est sto reg1
  reg price i.foreign##c.mpg##i.rep78
  est sto reg2
  estadd scalar h  4
  reg price i.rep78
  est sto reg3
  estadd scalar h = 2.5

outwrite reg1 reg2 reg3 using "test.xlsx" ///
 , stats(N r2 h)  replace col("TEST" "(2)") drop(i.rep78) format(%9.3f)
