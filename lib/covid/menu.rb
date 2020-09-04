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
    display_states
      puts "Select the number of the state you would like statistics on."
    
    input = gets.strip.to_i
    
    if input between?(0, number_of_states -1)
      index = input
      
      state = 
      scrape_state_details(state)
      puts "The statistics for #{state.name}:"
      puts " "
      puts "The total number of cases for #{state.name} is : #{state_total_cases}."
      puts " "
      puts "The total number of deaths for #{state.name} is : #{state_total_deaths}."
      puts " "
      puts "The total number of recoveries for #{state.name} is : #{state_total_recoveries}."
      
      list_states 
      
    else 
      exit_program 
    end 
  end
  
  def end_program
     puts " "
    puts "Please remember to wash your hands and have a socially-distanced day!"
    puts " "
  end 
  
end 

  
  def end_program
  end 
  
end 
  
  
end 