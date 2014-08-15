class Card
  attr_reader :question, :answer
  def initialize(qa_pair) #or hash
    @question = qa_pair[0]
    @answer = qa_pair[1]
  end
end
