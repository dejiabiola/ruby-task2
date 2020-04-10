def gameFunction(guess_max, guess_limit, difficulty)
  # Easy level. Prompt the user for a number from 1 to guess_max and validate. Prompt again if validation fails.
  puts "You chose " + difficulty + " level. Can you guess the magic number?"
  puts "Please enter a number between 1 and " + guess_max.to_s + ":"
  guess = gets.chomp().to_i
  while guess > guess_max or guess < 1
    puts "You need to enter a number between 1 and " + guess_max.to_s + ":"
    guess = gets.chomp().to_i
  end

  # Declare necessary variables
  guess_count = 1
  random_number = rand(1..guess_max)
  out_of_guesses = false
  
  while guess != random_number and !out_of_guesses
    # check if the user guesses correctly the random number and if out of guesses
    if guess_count < guess_limit
      # Ask the user to guess again and run validation on user prompt
      puts "That was wrong."
      puts "You have " + (guess_limit - (guess_count)).to_s + " guesses left. Guess again: "
      guess = gets.chomp().to_i
      while guess > guess_max or guess < 1
        puts "You need to enter a number between 1 and " + guess_max.to_s + ":"
        guess = gets.chomp().to_i
      end
      guess_count += 1
    else
      out_of_guesses = true
    end
  end
  #pass out of guesses value to function
  checkForWin(out_of_guesses)
end


def checkForWin(out_of_guesses)
  # If out of gueses is true, then user lost otherwise user won
  if out_of_guesses
    puts "Game over!."
  else
    puts "You got it right!"
  end
end

def checkLevel(level)
  # Check level the user wants and call the appropriate function
  if level == "easy"
    gameFunction(10, 6, level)
  elsif level == "medium"
    gameFunction(20, 4, level)
  elsif level == "hard"
    gameFunction(50, 3, level)
  else
    puts "You have entered an invalid input."
  end
end

puts "Welcome to the number guessing game!"
puts "There are 3 levels. These are easy, medium and hard."
puts "Enter a level to continue: "
level = gets.chomp().downcase
checkLevel(level)