module Covid
  class State 
    attr_accessor :name, :total_cases
    
    def self.load_data 
      Covid::Scraper.new.load
    end 
    
    def self.find(name) 
      puts "You requested #{name}"
      s = State.new 
      s.name = 
      s.total_cases = 
      s
    end 
    
  end 
end 
      