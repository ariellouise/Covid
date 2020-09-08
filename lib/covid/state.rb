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
  
  def show_total_deaths
    puts "#{self.name} has #{self.total_deaths} total deaths."
  end 
  
  def show_total_recoveries
    puts "#{self.name} has #{self.total_recoveries} total recoveries."
  end 
 
 def find_by_name(state_name)
   result = all.find {|state| state.name.downcase == state_name}
     if result 
       puts "#{self.add_spaces_back_front("USA State")} |#{self.add_spaces_back_front("Total Cases")}  |#{self.add_spaces_back_front("Total Deaths")}"
       puts "-------------------------------------------------------------------"
       puts "#{self.add_spaces(result.name)}| #{self.add_spaces(add_commas(result.confirmed_cases))}| #{self.add_spaces(add_commas(result.overall_deaths))}"
     else 
       puts "#{state_name} does not exist."
       puts "Please enter a valid state name."
       input = gets.strip.downcase.to_str
       input != 'exit' ? find_by_name(input) : nil
       end
    result
    end
 
 
end 

  