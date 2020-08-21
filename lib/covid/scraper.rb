module Covid 
  class Scraper 
    
    def initialize
    end 
    
    def load
      @doc = Nokogiri::HTML(open('https://www.worldometers.info/coronavirus/country/us/'))
      @doc.search("usa_table_countries_today tbody tr").each do |table_row|
        name_column = table_row.search("td") [0]
        cases_column = table_row.search("td") [1]
        
        s = State.new 
        s.name = name_column.text.strip 
        s.total_cases = cases_column.text.strip 
        s.save
        
    end 
    
    
  end 
end 