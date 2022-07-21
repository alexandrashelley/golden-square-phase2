def e_extractor(str)
    if str.include? "e"
      letters = str.chars # turn string into list of letters
      e_idx = letters.index("e") # finding the index in which the "e" in the string is
      before_e = str[0, e_idx] # getting the part of the string before the index
      after_e = str[e_idx + 1, str.length] # getting the part of the string aftert the index
      return "e#{before_e}#{after_e}" # putting the "e" at the start of the string and the two parts of the string following
    else
      return str
    end
end


