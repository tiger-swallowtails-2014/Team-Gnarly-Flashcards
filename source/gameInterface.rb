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
    puts "Welcome!"
    puts "How to play:"
    puts "type 'show hint' to get a hint"
    puts "type 'show answer' to get the answer"
    puts "type 'quit' to quit"
    puts "type 'play' when you're ready to play!"
  end
end
