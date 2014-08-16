require_relative 'card.rb'

hint_test = Card.new(["who is the coolest?", "gary"])

class Hints
  def initialize
    @letter_number = 0
  end

  def show_next_letter(flash_card)
    puts "Hint: '#{flash_card.answer[0..@letter_number]}'"
    @letter_number += 1
  end

  def display_answer(flash_card)
    puts "Answer: '#{flash_card.answer}'"
  end
end

hint = Hints.new
hint.show_next_letter(hint_test)
hint.show_next_letter(hint_test)
hint.show_next_letter(hint_test)
hint.show_next_letter(hint_test)
hint.show_next_letter(hint_test)
hint.show_next_letter(hint_test)
hint.display_answer(hint_test)
