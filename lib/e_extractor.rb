def e_extractor(str)
  letters = str.chars # turn string into list of letters
  e_letters = letters.select { |l| l == "e" }.join # select letter e, then join back to string
  non_e_letters = letters.select { |l| l != "e" }.join # select all letters that aren't e, then join back to string
  return "#{e_letters}#{non_e_letters}" # return concatenated strings
end



