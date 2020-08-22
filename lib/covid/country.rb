
class Country
  
  attr_accessor :name, :total_cases, :total_deaths, :total_recoveries
  
  @@countries = []
  
  def initialize(attributes)
    attributes.each {|key, value| self.send(("#{key}="), value)}
    save
  end 
  
  def self.all 
    @@countries 
  end 
  
end 