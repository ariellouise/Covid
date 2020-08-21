module Covid 
  class Scraper 
    
    def initialize
    end 
    
    def load
      @doc = Nokogiri::HTML(open('https://www.worldometers.info/coronavirus/country/us/'))
    end 
    
    
  end 
end 