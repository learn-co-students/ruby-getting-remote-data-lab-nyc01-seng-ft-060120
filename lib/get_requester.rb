require 'net/http'
require 'open-uri'
require 'json'
# require 'awesome_print'

class GetRequester
  attr_accessor :url
  def initialize(url)
    @url = url
  end

  def get_response_body
    uri = URI.parse(url)
    response = Net::HTTP.get_response(uri)
    response.body
  end

  def parse_json
    nds = JSON.parse(self.get_response_body)
    nds
  end
  
  

end