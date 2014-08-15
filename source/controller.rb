require_relative 'Parser.rb'
require_relative 'card.rb'
require_relative 'deckGenerator.rb'
require_relative 'question_make_model.rb'

# require 'debugger'

print "\e[2J"; print "\e[H"; puts "Welcome!"
file = 'flashcards.txt'
deck = DeckGenerator.new(Parser.parse(file))
game = QuestionMaker.new(deck.shuffle)
game.ask_question

