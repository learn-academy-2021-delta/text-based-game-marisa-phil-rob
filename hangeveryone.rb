
puts 'You wake up on a beach'
puts 'A voice in the distance lets you know that you must correctly answer the 5 sacred questions'
puts 'Player tip: all answers are one word or less'
puts 'If you want to make it to the Jungle Entrance, you must asnwer this correctly'
# variables used to track/log the progression of the game
AVAILABLE_LETTERS = ("a".."z").map { |letter| letter }

WORDS = ["towel", "sap", "bat", "water", "lava"]
$incorrect_guesses = 0
# methods used to determine how the game should progress
def check_guess(word, char)
  if word.downcase.include?(char.downcase) && AVAILABLE_LETTERS.include?(char.downcase)
    AVAILABLE_LETTERS.delete(char.downcase)
  else
    AVAILABLE_LETTERS.delete(char.downcase)
    $incorrect_guesses += 1
  end
  puts display_word(word)
end
def has_won?(word)
  display_word(word).split(" ").join("").downcase == word.downcase
end
def has_lost?
  $incorrect_guesses >= 3
end
def display_word(word)
  word.split("").map do |char|
    if AVAILABLE_LETTERS.include?(char.downcase)
      " _ "
    else
      " " + char.downcase + " "
    end
  end
  .join("")
end

def play_game

  # display_snowman
  puts "You wanna survive!!!  Select 'yes' to continue"
  user_word_choice = gets.chomp
  if user_word_choice.downcase == 'yes'
    word = WORDS[0]
  end
  puts "Here is your riddle: 'What gets wet while drying?'!!!"
  # puts display_word(word)
  while !has_won?(word) && !has_lost?
    puts "************************************************************************************"
    # puts display_snowman
    puts "The following letters have yet to be guessed:"
    puts AVAILABLE_LETTERS.join(" - ")
    # puts display_word(word)
    puts "Guess a letter:"
    letter = gets.chomp
    check_guess(word, letter)
  end
  puts "************************************************************************************"
  if has_won?(word)
    puts "You saved your a$$!"
  else
    puts "RIP amigo!"
    puts "Try again, of you dare"
  end
puts AVAILABLE_LETTERS.reset
word = WORDS[1]
puts "Here is your riddle: 'I'm soft and slow, in the right light I glow. I rhyme with nap
 They call me?'!!!"
# puts display_word(word)
while !has_won?(word) && !has_lost?
puts "************************************************************************************"
# puts display_snowman
puts "The following letters have yet to be guessed:"
puts AVAILABLE_LETTERS.join()
# puts display_word(word)
puts "Guess a letter:"
letter = gets.chomp
check_guess(word, letter)
end
puts "************************************************************************************"
if has_won?(word)
puts "You saved your a$$!"
else
puts "RIP amigo!"
puts "Try again, if you dare"
end
AVAILABLE_LETTERS.reset
word = WORDS[2]
puts "A screaching cry and a blinded eye. Dare call me a rat, but I prefer"
# puts display_word(word)
while !has_won?(word) && !has_lost?
puts "************************************************************************************"
# puts display_snowman
puts "The following letters have yet to be guessed:"
puts AVAILABLE_LETTERS.join(" - ")
# puts display_word(word)
puts "Guess a letter:"
letter = gets.chomp
check_guess(word, letter)
end
puts "************************************************************************************"
if has_won?(word)
puts "You saved your a$$!"
else
puts "RIP amigo!"
puts "Try again, if you dare"
end
AVAILABLE_LETTERS.reset
word = WORDS[3]
puts "I'm in the middle of water but I'm not an island. What am I?"
# puts display_word(word)
while !has_won?(word) && !has_lost?
puts "************************************************************************************"
# puts display_snowman
puts "The following letters have yet to be guessed:"
puts AVAILABLE_LETTERS.join(" - ")
# puts display_word(word)
puts "Guess a letter:"
letter = gets.chomp
check_guess(word, letter)
end
puts "************************************************************************************"
if has_won?(word)
puts "You saved your a$$!"
else
puts "RIP amigo!"
puts "Try again, if you dare"
end
AVAILABLE_LETTERS.reset
word = WORDS[4]
puts "I creep and crawl while melting all. Life reborn after those lost morn. I rhyme with Java?"
# puts display_word(word)
while !has_won?(word) && !has_lost?
puts "************************************************************************************"
# puts display_snowman
puts "The following letters have yet to be guessed:"
puts AVAILABLE_LETTERS.join(" - ")
# puts display_word(word)
puts "Guess a letter:"
letter = gets.chomp
check_guess(word, letter)
end
puts "************************************************************************************"
if has_won?(word)
puts "You saved your a$$!"
else
puts "RIP amigo!"
puts "Try again, if you dare"
end

end

play_game
