*Ryan Marinelli 
* Econometrics Rought Draft Analysis 

* Finding how variables impact if a party will stay in power
* The DP is binary so the betas will describe increases in probability. 
* R^2 is 15. 
regress partywasrelected dem_spending_2006 campaignspendingin2006dollarsfor 
gini unemploymentoct percentofpopulationthatvoted poputionofstate 
percentofpopularvoted percentofpo pularvoter


 
 
 * Running a regression with spending combined together
 
 gen total_spending = dem_spending_2006 + campaignspendingin2006dollarsfor
 
  regress partywasrelected 
  total_spending gini
  percentofpopulationthatvoted
  poputionofstate percentofpopularvoted 
  percentofpopularvoter
  
  
  * Regressing in terms of total population and spending
  * Variables are less significant expect for total spending. That is more. 
   regress partywasrelected total_spending unemploymentoct
   gini numberofpopularvoteforrep numberofpopularvotefordem 
   numberofpoputionthatvoted 
   
 * Running regression gini on other IV
 * Much higher R^2. It is 35.
 

 *Trying a robust regression
 * If there are two political parties, it seems like homogenity is not a good
 * assumption when using this data set
 rreg partywasrelected dem_spending_2006 campaignspendingin2006dollarsfor gini unemploymentoct percentofpopulationthatvoted poputionofstate numberofpoputionthatvoted percentofp
> opularvoted percentofpopularvoter

*Testing if gini on IV's is interesting 
rreg gini partywasrelected dem_spending_2006 campaignspendingin2006dollarsfor un
> employmentoct percentofpopulationthatvoted poputionofstate numberofpoputiont


