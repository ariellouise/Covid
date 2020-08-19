class CLI 
 
  def greeting
    puts "Welcome to your Covid-19 County Planner."
  end 
  
  def menu
    puts "-- Type 'state' to choose the state you would like to see statistics on"
    puts "-- Type 'cases' for the number of confirmed cases per state"
    puts "-- Type 'counties' for the list of the top ten counties affected by Covid in the state"
    puts "To exit, just type 'exit'"
    input = gets.strip.downcase
    
    if input == "state"
      list_states
    elsif input == "cases"
      confirmed 
    elseif input == "counties"
      list_counties
    elsif input == "exit"
      end_program
      
  end 
 
 def list_states 
 end 
 
 def confirmed
 end 
 
 def list_counties 
 end 
 
 def end_program 
   puts "Remember that regardless of whichever county you visit, you should regularly wash your hands, maintain 6 feet distance from others, and wear a mask. Goodbye!"
 end 
