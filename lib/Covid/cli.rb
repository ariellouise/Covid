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
    puts "To begin, please choose a state to see confirmed cases:"
    list_states
    input = gets.strip.downcase
    choose_state(input)
    return input
  end 
  
  def list_states
    1. New York 
    2. Washington
    3. California
  end 
  
  def choose_state(option) #need the actual method
    case option 
    when "1"
      puts "You would like to view confirmed cases for New York."
    when "2"
      puts "You would like to view confirmed cases for Washington."
    when "3"
      puts "You would like to view confirmed cases for California."
    end 
  end 
