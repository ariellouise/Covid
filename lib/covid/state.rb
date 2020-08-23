class State 
  attr_accessor :name, :total_cases, :total_deaths, :total_recoveries
  @@states = []
  
  def initialize(name, total_cases, total_deaths, total_recoveries)
    @name = name
    @total_cases = total_cases
    @total_deaths = total_deaths
    @total_recoveries = total_recoveries
    @@states.push(self)
  end 
  
  def self.all
    @@states
  end
  
  def show_total_cases
    puts "#{self.name} has #{self.total_cases} total cases."
  end 
  
  def total_deaths
    puts "#{self.add_spaces(state.name)} has #{self.add_spaces(state.total_deaths)} total deaths."
  end 
  
  def total_recoveries
    puts "#{self.add_spaces(state.name)} has #{self.add_spaces(state.total_recoveries)} total recoveries."
  end 
  
  def find_by_name(state_name)
    result = all.find {|state| state.name.downcase == state_name}
    if result
      puts "#{self.add_spaces(result.name)} has #{self.add_spaces(result.total_cases)} total cases, #{self.add_spaces(result.total_deaths)} total deaths, and #{self.add_spaces(result.total_recoveries)} total recoveries."
    else  
      puts "I'm sorry, that is an invalid option. Please enter a valid state name."
      input = gets.strip.downcase.to_str 
      input != 'exit' ? find_by_name(input) : nil 
    end 
    result
  end 
end 
