class Menu 

  #greets user, scrapes the data, and then runs the command line
  def start 
    @state_menu = State_menu.new #This makes option 2 work because it creates a new object
    greeting
    menu
    scrape
    while menu != 'exit'
    end
    end_program
  end 
  
  #greets user 
  def greeting 
    puts "Welcome to the Covid-19 Statistic CLI."
    scrape
  end 
  
  #display menu which returns user input
  def menu
    puts " "
    puts "Please choose an option:" 
    puts " "
    list_options #
    input = gets.strip.downcase
    choose_option(input) 
    return input
  end 
  
  #prints out a menu
  def list_options
    puts "What statistics are you interested in?"
    puts "1. See a list of states with statistics."
    puts "2. See statistics by state individually."
    puts "3. Total Covid Cases by state."
    puts "4. Total Covid Deaths by state."
    puts "5. Total Covid Recoveries by state."
    puts "6. Exit program."
  end 
  
  #runs user specified task from their input 
  def choose_option(option)
    case option
    when "1"
      self.list_states #passes through data 
    when "2"
      @state_menu.find_by_name 
    when "3"
      puts "Total Covid Cases by state:"
      State.all.each { |name| name.show_total_cases }
    when "4"
      puts "Total Covid Deaths by state:"
      State.all.each { |name| name.show_total_deaths }
    when "5"
      puts "Total Covid Recoveries by state:"
      State.all.each { |name| name.show_total_recoveries }
    when "6"
      end_program
      exit
    end 
  end 
   #def error 
    #puts "Sorry, that answer was invalid. Please try again!"
  #end 
  
  def end_program
    puts " "
    puts "Please remember to wash your hands and have a socially-distanced day!"
    puts " "
  end 
  
  #scrapes state information
  def scrape
    Scraper.scrape_states
  end 
  
  #returns a numbered list of each state that we can scrape available data from.
  def list_states
    State.all.each_with_index  do |state, i|
      puts " #{i+1}. #{state.name}  "
      puts ""
     end
  end 
end 


class State_menu
  
  def find_by_name
      puts "Please enter the state name you like to find"
      state_name = gets.strip.downcase.to_str
      found_state = State.all.find {|state| state.name.downcase == state_name}
      if found_state 
         puts " "
         puts " "
         puts " Your state #{found_state.name} has #{found_state.total_cases} total cases, #{found_state.total_deaths} total deaths, and #{found_state.total_recoveries} total recoveries." 
         puts " "
      else 
         puts "#{state_name} does not exist."
         puts "Please enter a valid state name."
         input = gets.strip.downcase.to_str
         input != 'exit' ? find_by_name(input) : nil
      end 
       found_state
  end 
  
end 