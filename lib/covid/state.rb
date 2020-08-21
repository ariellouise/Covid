module Covid
  class State 
    attr_accessor :name, :total_cases
    @@all = []
    def self.load_data 
      Covid::Scraper.new.load
    end 
    
    def self.find(name) 
      state = @@all.detect{|s| s.name == name}
    end 
    
    def save 
      @@all << self 
    end 
    
  end 
end 
      