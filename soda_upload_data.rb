require "json"
require "open-uri"
require "soda"

# setup Socrata Client

     client = SODA::Client.new({:domain => "opendata.bristol.gov.uk", :username => "XXXX", :password => "XXXX", :app_token => "XXXX"})


@alert = [['abc',2],['def',3]]

update = []
@alert.each do |x|

     update << {

"a" => x[0],
"b" => x[1]
}
 

end

puts update

# this option does over-write previous uploads
    
#  @response = client.put("XX", update)

# this option does not over-write previous uploads

  @response = client.post("th9i-ghqw", update)


