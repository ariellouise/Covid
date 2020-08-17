class CLI 
  #needs to greet user, needs to run (execute) needs a menu, exit, need menu to choose states, and menu to choose counties of state (getter data)
  
  def greeting
    puts "Welcome to your Covid-19 County Planner."
  end 
  
  def menu
    puts "Please choose a state to see confirmed cases of:"
    list_states
  end 
  
  
  def list_states
  end 
  
  def end_program
    puts "Remember that regardless of whichever county you visit, you should regularly wash your hands, maintain 6 feet distance from others, and wear a mask. Goodbye!"
  end 
  
end 

#def method for each class 