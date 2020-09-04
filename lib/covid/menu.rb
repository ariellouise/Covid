class Menu 
  attr_accessor :display, :options, :user_input, :end_program
  
  def initialize(main_menu, state_menu)
    @main_menu = main_menu
    @state_menu = state_menu
  end 
  
  def main_menu 
    @main_menu 
  end 
  
  def state_menu
    @state_menu
  end 
  
  def display=(display)
    @display = display
  end 
  
  def display
    @display
  end 
  
  def options=(options)
    @options = options
  end 
  
  def options 
    @options
  end 
  
  def user_input=(user_input)
    @user_input = user_input 
  end 
  
  def user_input 
    @user_input
  end 
  
  
  def end_program=(end_program)
    @end_program = end_program 
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
