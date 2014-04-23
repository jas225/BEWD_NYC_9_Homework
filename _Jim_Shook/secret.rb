#welcoming player
puts "Welcome to the Secret Game!"
puts "Please tell me your name"

#getting their name
name = gets.strip

puts "Hi #{name}! You will be guessing a number between 1 and 10, and have three tries to get it right."

#setting the number
game_num = 8

puts "What is your guess?"

player_num = gets.strip.to_i

counter = 0

#loop for determining number of guesses and conditional for what to do next

guesses = 3

while counter < guesses

	if player_num == game_num

		puts "Congratulations, you guessed it correctly!"
		
		break

	elsif player_num > game_num

		puts "Your number was a bit too high"

		counter += 1

		if counter == 3
			puts "Sorry you have lost the game. The number was #{game_num}."
		else
			puts "Number of guesses left: #{3 - counter}"
			player_num = gets.strip.to_i
		end

	elsif player_num < game_num

		puts "Your number was a bit too low"

		counter += 1
		
		if counter == 3
			puts "Sorry you have lost the game. The number was #{game_num}."
		else
			puts "Number of guesses left: #{3 - counter}"
			player_num = gets.strip.to_i
		end

	end
end







