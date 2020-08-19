class CLI 
 
 def run 
   greeting
   menu #returns user input
   while menu != 'exit'
   end 
   end_program
 end 
 
 
  def greeting
    puts "Welcome to your Covid-19 County Planner."
  end 
  
  def menu
    puts "Please choose a state:"
    list_states
    input = gets.strip.downcase
    return input
  end 
  
  def list_states
    1. New York 
    2. Washington
    3. California
  end 
 
 def end_program 
   puts "Remember that regardless of whichever county you visit, you should regularly wash your hands, maintain 6 feet distance from others, and wear a mask. Goodbye!"
 end 
