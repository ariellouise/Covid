class CLI 
  def run 
    greeting
    menu
    while menu != 'exit'
    
    end 
    end_program
  end  
  
  def greeting 
    puts "Welcome to your Covid-19 State & County Report."
  end 
  
  def menu 
    puts "To begin, please choose an option:"
    list_options
    input = gets.strip.downcase
    choose_option(input)
    return input
  end 
  
  def list_options
    # THIS NEEDS A PRINT METHOD
    1. List states to get individual statistics. 
    2. List counties to get individual statistics.
  end 
  
  def choose_option(option) #need the actual method
    case option 
    when "1"
      puts "You would like to view a state's confirmed cases."
    when "2"
      puts "You would like to view a list of counties to see confirmed statistics."
    end 
  end 
