# The Game: Computer picks a number 1-10. You have 3 guesses. After each guess the computer will tell you higher, lower, or you won.
# Procedural: think through it top to bottom
# 1. Player starts the Game
# 2. The game randomly determines the hidden number
# 3. Player is prompted for the first guess
# 4. The guess is checked against the hidden number
# 5. If the guess is right, the game ends. Otherwise player gets feedback about the guess.
# 6. Player is prompted for the second guess
# 7. The guess is checked against the hidden number
# 8. The guess results are again presented
# 9. Player is prompted for the third guess
# 10. The guess is checked against the hidden number
# 11. The guess results are again presented
# 12. If the number hasn't been guessed, the game ends in a loss.

# Helper method to check for win, loss, feedback
def guess_checker(guess, random_number, i)
	if (i + 1) < 3 
		if random_number == guess
			puts "You Win! #{guess} was the number!"
			exit
		elsif random_number > guess
			puts "Guess Higher.."
		elsif random_number < guess
			puts "Guess Lower.."
		end
	end

	if (i + 1) == 3
		if random_number == guess
			puts "You Win! #{guess} was the number!"
		else
			puts "Sorry, the number was #{random_number}. "
		end
	end
end


# Main method 
def play_game
	random_number = rand(1..10)
	puts "You have 3 chances to guess a number between 1 and 10"

	3.times do |i|
		print "Make guess ##{i+1}:  "
		guess = gets.chomp.to_i
		puts "Your guess was #{guess}!"
		guess_checker(guess, random_number, i)
	end
end

play_game
