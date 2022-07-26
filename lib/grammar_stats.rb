class GrammarStats
  def initialize
    @text_passed = 0
    @total = 0
  end

  def check(text) 
    fail "Please input some words" if (text.is_a? (Integer)) || (text.empty?)
    second_letter_capitalised = text[1] == text[1].upcase
    capital_letter_at_start = text.match?(/\A[A-Z]/)
    punctuation_at_end = [",", ".", "?"].include? text[-1]
    @total += 1
    if second_letter_capitalised 
      false
    elsif capital_letter_at_start && punctuation_at_end 
      @text_passed += 1
      true
    else
      false
    end
  end

  def percentage_good
    (@text_passed / @total.to_f * 100).round
  end

  def passed 
    @text_passed
  end

  def total
    @total
  end
  
end

p check_grammar = GrammarStats.new
p check_grammar.check("Hello")
p check_grammar.check("Hello.")
p check_grammar.check("Hello.")
p check_grammar.passed
p check_grammar.total
