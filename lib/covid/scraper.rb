

class Scraper 
  URL = "https://www.worldometers.info/coronavirus/country/us/"
  
  def self.scrape_states
    covid_doc = Nokogiri::HTML(open(URL))
    states_array = covid_doc.css("tbody tr")
    states_array[1..51].each do |state_row_data|
      state_name = state_row_data.css("td")[1].text.split(" ").join(" ")
      total_cases = (state_row_data.css("td")[2].text).to_i
      total_deaths = (state_row_data.css("td")[4].text).to_i
      total_recoveries =(state_row_data.css("td")[6].text).to_i
      State.new(state_name,total_cases,total_deaths,total_recoveries)
    end 
  end
  
end 