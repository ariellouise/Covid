
  class Menu 
    
    def start 
      main_menu
    end 
    
    def main_menu
      puts "What statistics are you interested in?"
      puts "1. Total Cases for the United States."
      puts "2. Total Cases by state."
      
      puts "Enter your choice by typing the number:"
      choice = gets.strip
      
      if "1"
        us_stats
      else "2"
        states_menu
      end 
    end 
    
    def us_stats 
      puts "You wanted to know the total Covid-19 cases in the United States." 
      main_menu
    end 
    
    def states_menu
      puts "You asked for the states menu to pick a state regarding their total Covid-19 cases."
      main_menu
    end 
  end 