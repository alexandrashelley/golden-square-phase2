class Phonebook 
  def initialize
    @numbers = [] 
  end

  def extract(entry)
    fail "Message doesn't contain a number!" if !entry.match?(/[0-9]/)
    fail "Number is the wrong length!" if !entry.match?(/[0-9]{11}/)
    entry.scan(/[0-9]{11}/).each do |word| 
      @numbers << (word) unless @numbers.include? (word)
      end
  end
  
  def list
    return @numbers
  end
end