** MONTREAL

clear
cls

import delimited "C:\Users\Alejandro\McGill\OneDrive - McGill University\Research\Thesis\IAQ\BlackCarbon\Montreal.csv"

xtset trip obs

gen sqrbc=sqrt(postbc2)

** Label variable
label variable city "City"
label variable vehicle "Vehicle"
label variable mode "Mode"
label variable route2 "Environment"
label variable window "Windows status"
label variable ac "AC status"
label variable crowd "Crowdedness level"
label variable postbc "Black Carbon"

label define Mode 0 "Outside" 1 "Subway" 2 "BRT" 3 "Bus"
label values mode Mode

label define Route 0 "Outside" 1 "BRT platform" 3 "Subway platform" 4 "Subway platform (elevated)"  6 "BRT - L1" 8 "BRT - L7" 9 "R1 - Pue" 10 "R1 - Pue (articulated)" 11 "R2 - Pue (articulated)" 12 "Re - Pue" 13 "R3 - Pue (articulated)" 14 "Subway - M12 (elevated)" 15 "Subway - M12 (tunnel)" 16 "Subway - M2 (street level)" 17 "Subway - M2 (tunnel)" 18 "Subway - M3 (street level)" 19 "Subway - Me (tunnel)" 20 "Bus - Mtl" 21 "Subway - Green line (tunnel)"
label values route2 Route

** Regressions

xtreg sqrbc i.mode i.tunnel i.window i.crowd i.ac, re vce(robust)

outreg2 using XtregCity2.doc, replace label bdec(3) sdec(4) title (Table 6: Determinants of BC levels in transit units by city) ctitle (Montreal) addtext (Prob > chi2, 0.0001)


** MEXICO

clear
cls

import delimited "C:\Users\Alejandro\McGill\OneDrive - McGill University\Research\Thesis\IAQ\BlackCarbon\Mexico.csv"

xtset trip obs

gen sqrbc=sqrt(postbc2)

** Label variable
label variable city "City"
label variable vehicle "Vehicle"
label variable mode "Mode"
label variable route2 "Environment"
label variable window "Windows status"
label variable ac "AC status"
label variable crowd "Crowdedness level"
label variable postbc "Black Carbon"

label define Mode 0 "Outside" 1 "Subway" 2 "BRT" 3 "Bus"
label values mode Mode

label define Route 0 "Outside" 1 "BRT platform" 3 "Subway platform" 4 "Subway platform (elevated)"  6 "BRT - L1" 8 "BRT - L7" 9 "R1 - Pue" 10 "R1 - Pue (articulated)" 11 "R2 - Pue (articulated)" 12 "Re - Pue" 13 "R3 - Pue (articulated)" 14 "Subway - M12 (elevated)" 15 "Subway - M12 (tunnel)" 16 "Subway - M2 (street level)" 17 "Subway - M2 (tunnel)" 18 "Subway - M3 (street level)" 19 "Subway - Me (tunnel)" 20 "Bus - Mtl" 21 "Subway - Green line (tunnel)"
label values route2 Route

** Regressions

xtreg sqrbc i.mode i.tunne##i.window i.crowd i.ac, re vce(robust)

outreg2 using XtregCity2.doc, append label bdec(3) sdec(4) title (Table 6: Determinants of BC levels im transit units by city) ctitle (Mexico City) addtext (Prob > chi2, 0.0000)


** Puebla

clear
cls

import delimited "C:\Users\Alejandro\McGill\OneDrive - McGill University\Research\Thesis\IAQ\BlackCarbon\Puebla.csv"

xtset trip obs

gen sqrbc=sqrt(postbc2)

** Label variable
label variable city "City"
label variable vehicle "Vehicle"
label variable mode "Mode"
label variable route2 "Environment"
label variable window "Windows status"
label variable ac "AC status"
label variable crowd "Crowdedness level"
label variable postbc "Black Carbon"

label define Mode 0 "Outside" 1 "Subway" 2 "BRT" 3 "Bus"
label values mode Mode

label define Route 0 "Outside" 1 "BRT platform" 3 "Subway platform" 4 "Subway platform (elevated)"  6 "BRT - L1" 8 "BRT - L7" 9 "R1 - Pue" 10 "R1 - Pue (articulated)" 11 "R2 - Pue (articulated)" 12 "Re - Pue" 13 "R3 - Pue (articulated)" 14 "Subway - M12 (elevated)" 15 "Subway - M12 (tunnel)" 16 "Subway - M2 (street level)" 17 "Subway - M2 (tunnel)" 18 "Subway - M3 (street level)" 19 "Subway - Me (tunnel)" 20 "Bus - Mtl" 21 "Subway - Green line (tunnel)"
label values route2 Route

** Regressions

xtreg sqrbc i.mode i.window i.crowd i.ac, re vce(robust)

outreg2 using XtregCity2.doc, append label bdec(3) sdec(4) title (Table 6: Determinants of BC levels im transit units by city) ctitle (Puebla) addtext (Prob > chi2, 0.0000)


** BRT

clear
cls

import delimited "C:\Users\Alejandro\McGill\OneDrive - McGill University\Research\Thesis\IAQ\BlackCarbon\MtlMexPue - brt.csv"

xtset trip obs

gen sqrbc=sqrt(postbc2)

** Label variable
label variable city "City"
label variable vehicle "Vehicle"
label variable mode "Mode"
label variable route2 "Environment"
label variable window "Windows status"
label variable ac "AC status"
label variable crowd "Crowdedness level"
label variable postbc "Black Carbon"

label define Mode 0 "Outside" 1 "Subway" 2 "BRT" 3 "Bus"
label values mode Mode

label define Route 0 "Outside" 1 "BRT platform" 3 "Subway platform" 4 "Subway platform (elevated)"  6 "BRT - L1" 8 "BRT - L7" 9 "R1 - Pue" 10 "R1 - Pue (articulated)" 11 "R2 - Pue (articulated)" 12 "Re - Pue" 13 "R3 - Pue (articulated)" 14 "Subway - M12 (elevated)" 15 "Subway - M12 (tunnel)" 16 "Subway - M2 (street level)" 17 "Subway - M2 (tunnel)" 18 "Subway - M3 (street level)" 19 "Subway - Me (tunnel)" 20 "Bus - Mtl" 21 "Subway - Green line (tunnel)"
label values route2 Route

** Regressions

**Regressions Mexico - Puebla brt)
xtreg sqrbc i.mode if city2==1, re vce(robust)

outreg2 using Xtregbrt.doc, replace label bdec(3) sdec(4) title (Table 1: Determinants of BC levels, BRT) ctitle (Montreal) addtext (Prob > chi2, 0.0527)

xtreg sqrbc i.mode if city2==2, re vce(robust)

outreg2 using Xtregbrt.doc, append label bdec(3) sdec(4) ctitle (Mexico City) addtext (Prob > chi2, 0.5462)

xtreg sqrbc i.mode if city2==3, re vce(robust)

outreg2 using Xtregbrt.doc, append label bdec(3) sdec(4) ctitle (Puebla) addtext (Prob > chi2, 0.0001)

xtreg sqrbc i.mode i.tunnel if city2==2, re vce(robust)

outreg2 using Xtreg2.doc, replace label bdec(3) sdec(4) title (Table 2: Determinants of BC levels on Mexico City's subway) ctitle (Mexico City) addtext (Prob > chi2, 0.0000)

xtreg sqrbc i.mode i.tunnel i.crowd if city2==2, re vce(robust)

outreg2 using Xtreg3.doc, replace label bdec(3) sdec(4) title (Table 2: Determinants of BC levels on Mexico City's subway) ctitle (Mexico City) addtext (Prob > chi2, 0.0000)


** Descriptive statistics
import delimited "C:\Users\Alejandro\McGill\OneDrive - McGill University\Research\Thesis\IAQ\BlackCarbon\Black python8.csv"

xtset trip obs

**outreg2 using sumstat.doc, replace sum(log)