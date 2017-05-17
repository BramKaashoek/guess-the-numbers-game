def main
  number = rand(100)
  max_guess = 10
  guesscount = 0
  score = 100
  puts "Welcome to the guessing game.\nYour current score is 100 points.\nYou will lose 10 points for every guess."

  while  guesscount <= max_guess do
    score -= 10

    puts "Make a guess?"
    guess = gets.chomp.to_i

    if guess == number
      puts "YOU WIN!!!\nGAME OVER!!!"
      puts "You have #{score} points left!"
      exit
    end

    puts higher_or_lower(number, guess)

    guesscount +=1
  end
  puts "Uh Oh. You didnt guess the number. That's tough."
end

def higher_or_lower(number, guess)
  if number > guess
    answer = "Higher!"
  else
    answer = "Lower!"
  end
end


main
