class Parser
  def self.parse(file)
    nested_array = []
    File.open(file, 'r').each_slice(3) do |row|
      p nested_array << [row[0].chomp,row[1].chomp]
    end
    nested_array
  end
end

# Parser.parse('flashcards.txt')
