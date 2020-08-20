module Covid 
  class Menu 
    
    def start 
      main_menu
    end 
    
    def main Menu
      puts "What 

"
      
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