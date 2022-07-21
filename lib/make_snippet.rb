def make_snippet(str)
  fail "Please input string" if (str.is_a? (Integer)) || (str.empty?)  
#   fail "Please input string" if str.each { |char| (",.?".include? char) }
  fail "Please input string" if !str.nil? && str.strip.empty? 
  str.each_char do |char| 
    (fail "Please input string") if ((",.?".include? char) == true)
  end
  # if we've inputted 1234, it will prioritise and check the first wrapped "if" conditional first, 
  #and will fail immediately if method isn't suitable for the object
    string = str.split(" ")
    if string.length > 5
        string.slice(0, 5).join(" ") + "..."
    else
        string.join(" ")
    end


 
end

