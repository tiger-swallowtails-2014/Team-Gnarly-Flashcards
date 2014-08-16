class QuestionMaker
  def initialize(deck)
    @deck = deck
    @index = 0
    @hint = Hints.new
  end

  def ask_question
    give_question(@index)
  end

  def give_question(index)
    puts "Question #{index + 1}:"
    puts  "#{@deck[@index].question}"
    answer = gets.chomp
    matched?(answer) if answer != 'quit'
  end

  def matched?(answer)
    if answer.downcase == @deck[@index].answer.downcase
      @index +=1
      if @deck.length - 1 >= @index
        reset_screen
        puts "Correct! Next question:"
        @hint = Hints.new
        puts
        give_question(@index)
      else
        puts "You have answered all questions!!"
      end
    elsif
        answer == 'show hint'
        reset_screen
        @hint.show_next_letter(@deck[@index])
        puts
        give_question(@index)
    elsif
        answer == 'show answer'
        reset_screen
        @hint.display_answer(@deck[@index])
        puts
        give_question(@index)
    else
      reset_screen
      puts "Incorrect! Try again."
      puts
      give_question(@index)
    end
  end

end
