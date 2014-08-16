require_relative 'display.rb'
#___________________________________________________


class Game
  def initialize(deck)
    @deck = deck
    @question_index = 0
    # @asked_questions = []
    # @retest_questions = []
  end

  def show_question
    @current_question = @deck[@question_index].question
    Display.question_prompt(@current_question,@question_index)
  end

  def get_guess
    @user_answer = gets.chomp
  end

  def test_answer #(deck, question_index, user_answer)
    # attempts = 0
    @current_question_answer = @deck[@question_index].answer
    if @user_answer != 'quit'
      # attempts += 1
      if @current_question_answer == true
        # @asked_questions << @index
        @question_index +=1
        if @deck.length - 1 >= @question_index
          Display.correct
          test_answer
        else
          Display.end
        end
      else
        Display.incorrect
        # if attempts > 3
        #   @retest_questions << @question_index
        test_answer
      end
    end
  end
end
