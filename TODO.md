

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

MENU RB 

create menu class
>>greeting 
>>main menu with the option to pull a state, or get a list of total deaths, list of total recoveries, and list of total cases, or exit.
>>user picks an option 
>>> needs to print a numeric list of states. (scraper)
>>>state menu to pick a state, go back to main menu, or exit.
>>User picks a number/state.
>>>print the state chosen's information. 
>> repeat state menu.
>>end_program. 


