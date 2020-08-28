require 'open-uri'
require 'nokogiri'


require_relative "covid/version"
require_relative "covid/menu"
require_relative "covid/state"
require_relative "covid/scraper"


module Covid
  class Error < StandardError; end
  # Your code goes here...
end 

#all files into this file, putting into main executable case