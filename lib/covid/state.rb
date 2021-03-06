class State 
  
  attr_accessor :name, :total_cases, :total_deaths, :total_recoveries
  @@states = []
  
  def initialize(name, total_cases, total_deaths, total_recoveries) #creates a new instance of itself with .new, having all these properties(attributes)
    @name = name
    @total_cases = total_cases
    @total_deaths = total_deaths
    @total_recoveries = total_recoveries
    @@states.push(self)
  end 
  
  def self.all #gives access to the object states 
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
 
 
end 

  