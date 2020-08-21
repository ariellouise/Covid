
  class Menu 
    
    def start 
      main_menu
    end 
    
    def main_menu
      puts "What statistics are you interested in?"
      puts "1. Total Cases for the United States."
      puts "2. Total Cases by state."
      puts "3. Exit"
      
      puts "Enter your choice by typing the number:"
      choice = gets.strip
      
      if "1"
        us_stats
      elsif "2"
        states_menu
      else "3"
        puts "Remember to wash your hands and have a socially-distanced day!"
      end 
    end 
    
    def us_stats 
      puts "You wanted to know the total Covid-19 cases in the United States." 
      main_menu
    end 
    
    def states_menu
      puts "Enter a state name to find their total Covid-19 cases."
      state_name = gets.strip
      
      state = Covid::State.find(state_name)
      puts "#{state.name} has #{state.total_cases} total cases."
      
      main_menu
    end 
  end 