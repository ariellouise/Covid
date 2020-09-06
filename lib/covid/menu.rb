class Menu 
  
  def start 
   puts "Welcome to the Covid-19 Statistic CLI." 
   scrape 
   list_states 
   menu 
 end 
  
  def list_states
    State.all.each_with_index  do |state, i|
      puts " #{i+1}. #{state.name}  "
      puts ""
    end
  end 
  
  def menu 
    input = nil 
    while input != "exit"
      puts "If you would like to see Covid Statistics on a state, please type in the state number. You may also type exit, to leave the program."
      input = gets.strip.downcase 
      
      if input_to_i > 0 && input.to_i.between(1, @states.length)
        state = @state[input.to_i - 1]
        selection = nil 
        
        while selection != "exit"
          puts "You have selected #{state.name}. To view the total cases by state, type 'total.' TO view deaths by state, type 'deaths'. To view recoveries by state, type 'recoveries'. You may also type 'exit' to leave the program." 
 
 
 
 
 
  def scrape
    Scraper.scrape_states
  end 
  


