require 'rest-client'
require 'json'

class Geocode
	attr_accessor :endpoint_url

	API_KEY = 'AIzaSyAkikcPjBkIwLjqdu6xj-BVL-9dGLqmBDY'

	def initialize(latlng)
		@endpoint_url = "https://maps.googleapis.com/maps/api/geocode/json?latlng=#{latlng}&sensor=true&key=#{API_KEY}"
	end

	def get 
		response = RestClient.get(endpoint_url)
		@parsed_response = JSON.parse(response)
	end

	def parsed_response
		@parsed_response['results'][0]['address_components'][2]['long_name']
	end
end



		