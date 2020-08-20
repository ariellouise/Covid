module Covid 
  class Menu 
    
    def start 
      main_menu
    end 
    
    def main Menu
      puts "What are you interested in the Covid Statistics of?"
      
      puts "1. New York State"
      puts "2. New York State Counties"
      puts "3. Exit"
      
      puts "Enter Choice Number:"
      choice = gets.strip 
      
      case "1" 
        state
      when "2"
        counties
      when "3"
        puts "Thank You For using the Covid App. Please remember to wash your hands!"
      end 
    end 
    
    def state
      puts "You asked for the Covid statistics of New York."
      main_menu
    end 
    
    def counties
      puts "You asked for the Covid statistics of Counties in New York."
      main_menu
    end 
    
  end 
end 