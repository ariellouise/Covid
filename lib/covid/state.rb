class State 
  
  def total_cases
    puts "#{self(state.name)} has #{self(state.total_cases)} total cases."
  end 
  
  def total_deaths
    puts "#{self(state.name)} has #{self(state.total_deaths)} total deaths."
  end 
  
  def total_recoveries
    puts "#{self(state.name)} has #{self(state.total_recoveries)} total recoveries."
  end 
  
  def find_by_name(state_name)
    result = all.find{|state| state.name.downcase == {state_name}
    if result
      puts "#{self(result.name)} has #{self(result.total_cases)} total cases, #{self(result.total_deaths)} total deaths, and #{self(result.total_recoveries)} total recoveries."
    else  
      puts "I'm sorry, that is an invalid option. Please enter a valid state name."
      input = gets.strip.downcase.to_str 
      input != 'exit' ? find_by_name(input) : nil 
    end 
    result 
  end 
  
end 