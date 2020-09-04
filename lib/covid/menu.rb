class Menu 
  attr_accessor :display, :options, :user_input, :end_program #behaviors
  
  def initialize(main_menu, state_menu, display, options, user_input, end_program)
    @main_menu = main_menu
    @state_menu = state_menu
    @display = display
    @options = options 
    @user_input = user_input
    @end_program = end_program
  end 
  
  def greeting 
    puts "Welcome to the Covid-19 Statistic CLI."
    scrape
  end 
  
  def main_menu 
    puts "What statistics are you interested in?"
    puts "1. Choose an individual state."
    puts "2. Total Covid Cases by state."
    puts "3. Total Covid Deaths by state."
    puts "4. Total Covid Recoveries by state."
    puts "5. Exit program."
  end 
  
  def user_input(main_menu)
    case user_input
    when "1"
      self.list_states
    when "2"
      puts "Total Covid Cases by state:"
      State.all.each { |n| n.show_total_cases }
    when "3"
      puts "Total Covid Deaths by state:"
      State.all.each { |n| n.show_total_deaths }
    when "4"
      puts "Total Covid Recoveries by state:"
      State.all.each { |n| n.show_total_recoveries }
    when "5"
      end_program
      exit
    end 
  end 

  
  def state_menu
    puts "1. Total Covid Cases for the state."
    puts "2. Total Covid Deaths for the state."
    puts "3. Total Covid Recoveries for the state."
    puts "4 Return to the Main Menu."
    puts "5. Exit program."
  end 
  
  def user_input(state_menu)
    case user_input 
    when "1"
      puts "Total cases for the state:"
      #pull total cases for each state 
    when "2"
      puts "Total deaths for the state:"
      #pull total deaths for each state 
    when "3"
      puts "Total recoveries for the state:"
      #put total recoveries for the state
    when "4" 
      main_menu 
    when "5"
    end_program 
  end 

  
  def display
    @display
  end 
  
  def options 
    @options
  end 
  
  def user_input 
    @user_input
  end 
  
  def end_program
     puts " "
    puts "Please remember to wash your hands and have a socially-distanced day!"
    puts " "
  end 
  
  
  def scrape
    Scraper.scrape_states
  end 
  
  def list_states
    State.all.each_with_index  do |state, i|
      puts " #{i+1}. #{state.name}  "
      puts ""
     end
  end 
end 

#call on variable and print