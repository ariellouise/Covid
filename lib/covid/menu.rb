
  class Menu 
    
    def start 
      Covid::State.load_data
      
      main_menu
    end 
    
    def main_menu
      puts "What statistics are you interested in?"
      puts "1. Total Cases for the United States."
      puts "2. Total Cases by state."
      puts "3. Exit program."
      
      puts "Enter your choice by typing the number:"
      choice = gets.strip
      
      case "1"
        us_stats
      when "2"
        states_menu
      when "3"
        exit
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