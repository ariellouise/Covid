class Menu 
  
  def start
    puts "Welcome to the Covid-19 Statistic CLI."
    menu
  end 
  
  
  def main_menu
    puts "Would you like to choose to see Covid-19 statistics by state, or as a total list? Please choose a number:"
    puts "  "
    puts "Type '1' to choose from a list of states to see it's individual statistics."
    puts "Type '2' to see a total list of Covid-19 cases for all states."
    puts "Type '3' to see a total list of Covid-19 deaths for all states."
    puts "Type '4' to see a total list of Covid-19 recoveries for all states."
    puts "Type 'exit' at any time to exit the program."
  end 
  
  while @input != "exit"
    @input = gets.strip