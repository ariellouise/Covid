

class Scraper 
  URL = "https://www.worldometers.info/coronavirus/country/us/"
  
  def self.scrape_states
    covid_doc = Nokogiri::HTML(open(URL))
    states_array = covid_doc.css("tbody tr")
    states_array[1..51].each do |state_row_data|
      state_name = state_row_data.css("td") [0].text.split(" ").join(" ")
      total_cases = text_to_integer(state_row_data.css("td") [1].text)
      total_deaths = text_to_integer(state_row_data.css("td") [3].text)
      total_recoveries =text_to_integer(state_row_data.css("td") [5].text)
    end 
  end
  
end 