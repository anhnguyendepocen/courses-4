
* load in xwalk
use "C:\Users\Nmath_000\Documents\data\pp713\fips_to_census.dta" , clear

rename V1 census_region

rename V2 state_name

rename V3 bpl


* save as temp file for merge 
tempfile temp_region
 save "`temp_region'"
 
use "C:\Users\Nmath_000\Documents\data\pp713\acs_small.dta", clear


*  merge onto region temp file 
merge m:1 bpl using `temp_region'

