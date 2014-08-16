require_relative 'screen_reset.rb'

class Display

  def self.correct
    reset_screen
    p "Correct! Next question:"
  end

  def self.end
    p "You have answered all questions"
  end

 def self.help
    puts "How to play:"
    puts "type 'show hint' to get a hint"
    puts "type 'show answer' to get the answer"
    puts "type 'quit' to quit"
    puts "type 'play' when you're ready to play!"
    puts "type 'home' to return to the main menu"
  end

  def self.incorrect
    reset_screen
    p "Incorrect! Try again."
  end

  def self.menu
    puts "Which option would you like to choose?"
  end

  def self.new_deck
    p "Enter the file you would like to use for your questions"
  end

  def self.question_prompt(question, question_number)
    p "Question #{question_number}:"
    p "#{question}"
  end

  def welcome
    puts "Welcome!"
    puts "Type 'play' to play or 'menu' for more options"
  end
end
