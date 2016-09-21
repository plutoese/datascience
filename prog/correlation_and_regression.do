* 1. Correlation and Regression

* Load wage1 dataset
use wage1, clear

* Describe 
de

* summarize
su

* Scatter
two scatter wage educ

* Correlations of variables
pwcorr wage educ, sig
pwcorr wage educ exper, sig

* findit Kendall

* Regression
gen female_educ = female * educ
reg wage educ
reg wage educ exper expersq tenure tenursq
reg wage female educ exper expersq tenure tenursq

* Use log(wage) as dependent variable
reg lwage female educ female_educ exper expersq tenure tenursq

* load mroz dataset
use mroz, clear

* OLS
reg lwage educ
reg educ fatheduc
reg educ motheduc
* IV regression
ivregress 2sls lwage (educ=fatheduc)
ivregress 2sls lwage exper expersq (educ=fatheduc motheduc)

