require 'json'
require 'open-uri'
doc = JSON.parse(open('https://opendata.bristol.gov.uk/resource/th9i-ghqw.json').read)
puts doc
