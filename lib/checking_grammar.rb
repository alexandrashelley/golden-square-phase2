def checking_grammar(text)
  fail "Please input a string to check." if text.empty?
  capital_letter_at_start = text.match?(/\A[A-Z]/)
  punctuation_at_end = [",", ".", "?"].include? text[-1]
  if capital_letter_at_start && punctuation_at_end == true
    return "Nothing to correct! Nice job!"
  else
    return "I noticed some errors..."
  end
end