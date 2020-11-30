# Write your code here

require 'rest-client'
require 'json'


class GetRequester
    attr_accessor :URL

    def initialize(url)
        @URL = url

    end
    
    def get_response_body
        RestClient.get(URL)

    end


    def parse_json
        JSON.parse(get_response_body)
  
    end

end