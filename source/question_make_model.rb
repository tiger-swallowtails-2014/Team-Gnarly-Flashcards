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
    # puts "#{@deck[@index][0]}"
    answer = gets.chomp.downcase
    matched?(answer) if answer != 'quit'
  end

  def matched?(answer)
    if answer == @deck[@index].answer
    # if answer == @deck[@index][1]
      @index +=1
      if @deck.length - 1 >= @index
        print "\e[2J"; print "\e[H"; puts "Correct! Next question:"
        puts
        give_question(@index)
      else
        puts "You have answered all questions"
      end
    else
      print "\e[2J"; print "\e[H"; puts "Incorrect! Try again."
      puts
      give_question(@index)
    end
  end

end

# fake_card=["why am i here", "abc"]
# deck=[fake_card]
# questionmaker= QuestionMaker.new(deck)
# questionmaker.ask_question
