class QuestionMaker
  def initialize(deck)
    @deck = deck
    @index = 0
  end

  def ask_question
    give_question(@index)
  end

  def give_question(index)
    puts  "#{@deck[@index].question}"
    # puts "#{@deck[@index][0]}"
    answer = gets.chomp
    matched?(answer)
  end

  def matched?(answer)
    if answer == @deck[@index].answer
    # if answer == @deck[@index][1]
      @index +=1
      if @deck.length - 1 >= @index
        give_question(@index)
        puts "Correct! Next question:"
      else
        puts "You have answered all questions"
      end
    else
      give_question(@index)
    end
  end

end

# fake_card=["why am i here", "abc"]
# deck=[fake_card]
# questionmaker= QuestionMaker.new(deck)
# questionmaker.ask_question
