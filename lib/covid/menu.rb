class Menu
  
  def call 
    scrape
    puts " "
    puts "Welcome to the Covid-19 Statistics CLI."
    puts " "
    list_states 
    start 
  end
  
  def list_states
    State.all.each_with_index  do |state, i|
    puts " #{i+1}. #{state.name}  "
    puts " "
    end
  end 
  
  def start 
    puts " " 
    puts "Which state would you like to see the statistics of first?"
    puts "1. The list of states"
    puts "2. A list of total Covid-19 cases."
    input = gets.strip.downcase
    if input == "1"
      self.list_states 
    else input == "2"
       puts "Total Covid Cases by state:"
      State.all.each { |n| n.show_total_cases }
    end 
  end 
  
  def display_details(details)
    puts " "
    puts "#{state.name}"
    puts " "
    puts "Would you like statistics? Enter 'yes', 'no', or 'exit.'"
    
    if input == == "yes"
      puts " "
      puts "Total Cases:    #{details.total_cases}"
      puts "Total Deaths:   #{details.total_deaths}" 
      puts "Total Recoveries:     #{details.total_recoveries}"
      puts " "
    elseif input == "no"
      start
    elseif input == "exit"
      puts " "
      puts "Please remember to wash your hands and have a socially-distanced day!"
      puts " "
      exit 
    else 
      puts " "
      puts "Sorry, that answer was invalid. Please try again!"
      puts " "
    end 
  end 
  
  def scrape
    scraper.scrape_states
  end 
end 