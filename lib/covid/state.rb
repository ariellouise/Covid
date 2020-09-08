class State 
  
  @@all = [ ]
  
  def initialize(name, total_cases, total_deaths, total_recoveries)
    @name = name 
    @total_cases = total_cases 
    @total_deaths = total_deaths
    @total_recoveries = total_recoveries 
    @@all << self 
  end 
  
  def self.all
    @@all
  end 
  
end 
  
  