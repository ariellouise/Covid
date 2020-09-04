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
  
  def main_menu 
    @main_menu 
  end 
  
  def state_menu
    @state_menu
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