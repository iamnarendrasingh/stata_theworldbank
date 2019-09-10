*https://worldbank.github.io/stata/

clear
set more off

ssc install makeid

sysuse auto.dta,clear
makeid foreign make , gen(uniqueid) project(Demo)
de uniqueid
list foreign make uniqueid in 1/5
list foreign make uniqueid in 53/57
