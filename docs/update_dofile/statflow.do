* https://worldbank.github.io/stata/

clear
set more off 

*ssc install statflow

sysuse auto.dta, clear
  // Set up a flowchart:
    statflow template using "E:\Self_GitKraken\Do_Not_Delete\stata_theworldbank\docs\update_dofile\statflow_example1.xlsx"

			tab foreign
			tab make if foreign ==0

  // Fill it out, then get all the requested statistics:
    statflow using "E:\Self_GitKraken\Do_Not_Delete\stata_theworldbank\docs\update_dofile\statflow_example1.xlsx" 
