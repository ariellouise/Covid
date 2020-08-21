  
  class State 
    attr_accessor :name, :total_cases
    @@all = []
    
    def initialize(name:, total_cases:)
      @name = name 
      @total_cases = total_cases 
      @@all << self 
    end
    
    def self.all 
      @@all 
    end 
    
    def self.find_by_name(name)
      @@all.find{|s| s.name == name} 
    end 
    
  end 
      