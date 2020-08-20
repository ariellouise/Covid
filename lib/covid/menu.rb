module Covid 
  class Menu 
    
    def start 
      main_menu
    end 
    
    def main Menu
      puts "What State are you interested in the Covid Statistics of?"
      
      puts "1. New York"
      puts "2. Washington"
      puts "3. California"
      puts "4. Exit"
      
      puts "Enter Choice Number:"
      choice = gets.strip 
      
      case "1" 
        new_york 
      when "2"
        washington
      when "3"
        california
      end 
      when "4"
        puts "Thank You For using the Covid App. Please emember to wash your hands!"
    end 
    
    def new_york
      puts "You asked for New York."
      main_menu
    end 
    
    def washington 
      puts "You asked for Washington."
      main_menu
    end 
    
    def california 
      puts "You asked for California."
      main_menu
    end 
    
  end 
end 