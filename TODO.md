Stats interested in 
1)States
2) County 

Enter state name 
New York
Washington
California  
CovidStat.find_by_state(“state_name”).cases

Total confirmed cases => CovidStat.find_by_state(“state_name”).cases

CovidStat (model) - what program does
-pulling data from source 
-parse
-match user query
-display specific stats

Menu (controller)
-#start
-main
--initial options
--gets input
--delegates to menu choice 


Data source :  https://github.com/amazingshellyyy/covid19-api
Data Endpoint: https://amazingshellyyy.com/covid19-api/US-CA/countyTimeseries.json

>What state do you want to find confirmed cases of?
Listing States => Confirmed.find_by_name(state_name)
1. New York
2. Washington
3. California 

What county in (state_name) do you want to find confirmed cases of? 
Listing Counties => Confirmed.find_by_county(county_name)
County 1 
County 2
County 3 etc. 
