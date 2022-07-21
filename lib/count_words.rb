def count_words(str)
    fail "Please input a string" if (str.is_a? (Integer)) || (str.strip.empty?)
    string_to_count = str.split(" ")
    number_of_words = string_to_count.count
    return number_of_words
end