class QuestionMaker
  def initialize(deck)
    @deck = deck
    @index = 0
  end

  def ask_question
    give_question(@index)
  end

  def give_question(index)
    puts "Question #{index + 1}:"
    puts  "#{@deck[@index].question}"
    answer = gets.chomp.downcase
    matched?(answer) if answer != 'quit'
  end

  def matched?(answer)
    if answer == @deck[@index].answer
      @index +=1
      if @deck.length - 1 >= @index
        reset_screen
        puts "Correct! Next question:"
        puts
        give_question(@index)
      else
        puts "You have answered all questions"
      end
    else
      reset_screen
      puts "Incorrect! Try again."
      puts
      give_question(@index)
    end
  end

end
