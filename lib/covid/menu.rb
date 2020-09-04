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
    case option
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
    @state_menu
  end 
  
  def 
  
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