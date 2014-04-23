require_relative 'geocoder.rb'

def greet
	puts "Hey, lets find out which neighborhood you're in!"
end

def get_latitude

	puts "Please tell me your latitude:"

	@latitude = gets.strip.to_f

	if @latitude > -90 && @latitude < 90 
		puts "Thanks!"
	else
		puts "Your latitude must be between -90 and 90!"
		get_latitude
	end
end

def get_longitude

	puts "Please tell me your longitude:"

	@longitude = gets.strip.to_f

	if @longitude > -180 && @longitude < 180
		puts "Thanks!"
	else
		puts "Your longitude must be between -180 and 180!"
		get_longitude
	end
end

def create_latlng
	@latlng = "#{@latitude},#{@longitude}"
	puts "Your latitude and longitude are #{@latlng}"
end

def return_neighborhood
	neighborhood_object = Geocode.new(@latlng)
	neighborhood_object.get
	neighborhood = neighborhood_object.parsed_response
	puts "And you're currently in #{neighborhood}!"
end


greet
get_latitude
get_longitude
create_latlng
return_neighborhood