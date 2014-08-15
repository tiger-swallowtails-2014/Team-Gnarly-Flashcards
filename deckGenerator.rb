class DeckGenerator
  def initialize(obj_array)
    @deck = []  #of Card objects
    obj_array.each{ |qa_pair| @deck << Card.new(qa_pair) }
  end

  def shuffle
    @deck.shuffle!
  end
end
