class Menu 
  
  def call 
    puts "Welcome to the Covid-19 Statistic CLI."
    scrape_states
    list_states
  end 
  
  def list_states
    puts "Would you like to choose to see Covid-19 statistics by state, or as a total list? Please choose a number:"
    puts "  "
    puts "Type '1' to choose from a list of states to see it's individual statistics."
    puts "Type '2' to see a total list of Covid-19 cases for all states."
    puts "Type '3' to see a total list of Covid-19 deaths for all states."
    puts "Type '4' to see a total list of Covid-19 recoveries for all states."
    puts "Type '5' to exit the program."
  end 
  
  def scrape_states
  end 
  
  def display_states
  end 
  
  def menu 
  end 
  
  def end_program
  end 
  
end 
  
  
end 