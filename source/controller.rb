require_relative 'card.rb'
require_relative 'deckGenerator.rb'
require_relative 'gameInterface.rb'
require_relative 'hint_class.rb'
require_relative 'Parser.rb'
require_relative 'question_make_model.rb'
require_relative 'screen_reset.rb'

# deck = DeckGenerator.new(Parser.parse('flashcards.txt'))
GameInterface.launch
