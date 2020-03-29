def easyLevel
  # Easy level. Prompt the user for a number from 1 to 10 and validate. Prompt again if validation fails.
  puts "You chose easy level. Can you guess the magic number?"
  puts "Please enter a number between 1 and 10: "
  guess = gets.chomp().to_i
  while guess > 10 or guess < 1
    puts "You need to enter a number between 1 and 10: "
    guess = gets.chomp().to_i
  end

  # Declare necessary variables
  guess_count = 1
  guess_limit = 6
  random_number = rand(1..10)
  out_of_guesses = false
  
  while guess != random_number and !out_of_guesses
    # check if the user guesses correctly the random number and if out of guesses
    if guess_count < guess_limit
      # Ask the user to guess again and run validation on user prompt
      puts "That was wrong."
      puts "You have " + (guess_limit - (guess_count)).to_s + " guesses left. Guess again: "
      guess = gets.chomp().to_i
      while guess > 10 or guess < 1
        puts "You need to enter a number between 1 and 10: "
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

def mediumLevel
  # Medium level. Prompt the user for a number from 1 to 20 and validate. Prompt again if validation fails.
  puts "You chose medium level. Can you guess the magic number?"
  puts "Please enter a number between 1 and 20: "
  guess = gets.chomp().to_i
  while guess > 20 or guess < 1
    puts "You need to enter a number between 1 and 20: "
    guess = gets.chomp().to_i
  end

  # Declare necessary variables
  guess_count = 1
  guess_limit = 4
  random_number = rand(1..20)
  out_of_guesses = false
  
  while guess != random_number and !out_of_guesses
    # check if the user guesses correctly the random number and if out of guesses
    if guess_count < guess_limit
      # Ask the user to guess again and run validation on user prompt
      puts "That was wrong."
      puts "You have " + (guess_limit - (guess_count)).to_s + " guesses left. Guess again: "
      guess = gets.chomp().to_i
      while guess > 20 or guess < 1
        puts "You need to enter a number between 1 and 20: "
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

def hardLevel
  # Hard level. Prompt the user for a number from 1 to 50 and validate. Prompt again if validation fails.
  puts "You chose hard level. Can you guess the magic number?"
  puts "Please enter a number between 1 and 50: "
  guess = gets.chomp().to_i
  while guess > 50 or guess < 1
    puts "You need to enter a number between 1 and 50: "
    guess = gets.chomp().to_i
  end

  # Declare necessary variables
  guess_count = 1
  guess_limit = 3
  random_number = rand(1..50)
  out_of_guesses = false
  
  while guess != random_number and !out_of_guesses
    # check if the user guesses correctly the random number and if out of guesses
    if guess_count < guess_limit
      # Ask the user to guess again and run validation on user prompt
      puts "That was wrong."
      puts "You have " + (guess_limit - (guess_count)).to_s + " guesses left. Guess again: "
      guess = gets.chomp().to_i
      while guess > 50 or guess < 1
        puts "You need to enter a number between 1 and 50: "
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
    easyLevel()
  elsif level == "medium"
    mediumLevel()
  elsif level == "hard"
    hardLevel()
  end
end

puts "Welcome to the number guessing game!"
puts "There are 3 levels. These are easy, medium and hard."
puts "Enter a level to continue: "
level = gets.chomp().downcase
if level == "easy" or level == "medium" or level == "hard"
  checkLevel(level)
else
  puts "You have entered an invalid input."
end
