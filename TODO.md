

2- class="maincounter-number" => US Total cases #



CovidStat.find_by_state(“state_name”).cases


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


>What state do you want to find confirmed cases of?
Listing States => Confirmed.find_by_name(state_name)


