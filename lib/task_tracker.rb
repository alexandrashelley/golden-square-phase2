def tracking_tasks(text)
  fail "Error. Please input a string" if text.empty?
  list_of_words = text.split(" ")
  if index = list_of_words.find_index {|todo| todo == "#TODO" }
    return list_of_words[index..-1].join(" ")
  else
    return "Couldn't find any tasks"
  end
end