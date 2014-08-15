class GameInterface
  def self.launch(file='flashcards.txt')
    reset_screen
    menu
    input = gets.chomp
    case input
    when "play"
      deck = DeckGenerator.new(Parser.parse(file))
      game = QuestionMaker.new(deck.shuffle)
      reset_screen
      game.ask_question
    end
  end

  def self.menu
    puts "Welcome! Type play to start."
    puts "Type 'instructions' for more options."
  end
end
