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
    @end_program
  end 