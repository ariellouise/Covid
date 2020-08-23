class Menu 
  
  def start 
    greeting
    menu 
  end 
  
  def greeting 
    puts "Welcome to the Covid-19 Statistic CLI."
    scrape
  end 
  
  def menu 
    puts "Please choose an option:"
    list_options 
    input = gets.strip.downcase
    choose_option(input)
    return input
  end 
  
  def list_options
    puts "What statistics are you interested in?"
    puts "1. List all states."
    puts "2. Total Covid Cases by state."
    puts "3. Total Covid Deaths by state."
    puts "4. Total Covid Recoveries by state."
    puts "5. Exit program."
  end 
  
  def choose_option(option)
    case option
    when "1"
      State.print_all
    when "2"
      puts "Total Covid Cases by state:"
      State.all.each { |n| n.show_total_cases }
    when "3"
      puts "Total Covid Deaths by state:"
      State.total_deaths
    when "4"
      puts "Total Covid Recoveries by state:"
      State.total_recoveries
    when "5"
      end_program
    end 
  end 
  
  
  #def error 
    #puts "Sorry, that answer was invalid. Please try again!"
  #end 
  
  def end_program
    puts "Please remember to wash your hands and have a socially-distanced day!"
  end 
  
  def scrape
    Scraper.scrape_states
  end 
  
end 