def checking_grammar(text)
  fail "Please input a string to check." if text.empty?
  if text.match?(/\A[A-Z]/)
    return "Nothing to correct! Nice job!"
  else
    return "I noticed some errors..."
  end
end