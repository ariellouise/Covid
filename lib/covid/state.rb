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
  
 # self.print_all(state_index) #added for instances
   #list.each_with_index do |state, index|
   #  puts "#{index + 1}. #{state.name}"
   #end 
 #end 
  
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
