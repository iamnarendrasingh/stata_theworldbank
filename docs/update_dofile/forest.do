*https://worldbank.github.io/stata/

clear
set more off
ssc install forest

global tw_opts ///
	title(, justification(left) color(black) span pos(11)) ///
    graphregion(color(white) lc(white) lw(med)) bgcolor(white) ///
    ylab(,angle(0) nogrid) xtit(,placement(left) justification(left)) ///
    yscale(noline) xscale(noline) legend(region(lc(none) fc(none)))

sysuse auto.dta , clear
forest reg mpg headroom trunk = displacement , graph($tw_opts)
