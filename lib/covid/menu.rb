class Menu

  def call 
    Scraper
    puts " "
    puts "Welcome to the Covid-19 Statistic CLI."
    puts " "
    start 
  end 

  
  def start 
    puts " "
    puts "Would you like to see a list of states currently with data?"
    puts " "
    input = gets.strip
    if input == "yes"
      list_states
      
    elsif input == "no"
      puts " Please type exit to leave"
      
    else 
      puts " "
      puts "Your input was not valid. Please try again."
      start 
    end 
    
    puts "Here is a list of states: "
    puts " "
    list_states
    input = gets.strip.downcase
    
    if input == "yes"
      start
    else 
      puts "Please remember to wash your hands and have a socially-distanced day!"
      exit 
    end 
  end 
  
  def display_states(state)
    puts " #{state.name}"
    puts " "
    puts "Total Cases: #{state.total_cases}"
    puts "Total Deaths: #{state.total_deaths}"
    puts "Total Recoveries: #{state.total_recoveries}"
    puts " "
    
    puts "Would you like to see total statistics for multiple states? PLease enter 'yes' or 'no', or 'exit' to leave."
    input = gets.strip.downcase 
    
    if input == "yes" 
      puts " "
      puts " Total cases by state:"
      State.all.each { |n| n.show_total_cases }
      puts " "
    elsif input == "no"
      start 
    elsif input == "exit" 
      puts " "
      puts "Please remember to wash your hands and have a socially distanced day!"
      puts " "
      exit 
    else 
      puts " "
      puts "I'm sorry, that's an invalid option. Please try again with 'yes', 'no', or 'exit'."
      display_states 
    end 
  end 
  
  def list_states
    State.all.each_with_index  do |state, i|
    puts " #{i+1}. #{state.name}  "
    puts " "
    end
  end 
  
  def scrape
    scraper.scrape_states
  end 


  
  
end 
    