class Parser
  def self.parse(file)
    nested_array = []
    File.open(file, 'r').each_slice(3) do |row|
      row.pop
      nested_array << row.map {|element| element.chomp}
    end
    nested_array
  end
end

# Parser.parse('flashcards.txt')
