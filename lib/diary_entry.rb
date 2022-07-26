class DiaryEntry
  def initialize(title, contents)
    @title = title
    @contents = contents
    @start = 0
  end

  def title
    @title 
  end

  def contents
    @contents
  end

  def count_words
    @contents.split(" ").count
  end

  def reading_time(wpm) 
    @words = wpm
    @word_count = count_words
    return (@word_count / @words.to_f).ceil
  end

  def reading_chunk(wpm, minutes) 
    chunk_to_read = wpm * minutes # depending on what our wpm is, and how many minutes available we have to read, chunk_to_read provides enough words to read 
    start_from = @start # our starting position (starting at 0), that we can index from
    end_at = @start + chunk_to_read # based on our wpm and time to read, end_at = starting point + number of words (in this case, 2)
    list_of_words = @contents.split(" ")[start_from, end_at] # start from index 0, end at index 2 (2 words)
      if end_at >= list_of_words.length # 
        @start = 0
      else 
        @start = end_at
      end
    return list_of_words.join(" ")
  end
end



    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.
    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.
    
    
    
    
    
    
    
    
    
    
    ## 2, 1
    #end_at = wpm * minutes # e.g. 2wpm, 1min to read => last_words_read = 2
    #list_of_words = @contents.split(" ") # created an array of our list of words ["this", "is", "some", "content"]
    #chunk_to_read = list_of_words[@start, end_at] # takes our list_of_words array, and finds the start(0), and last_word_of_current_chunk(2). chunk = 0, 2
    #@start = end_at # updating start as it is begins with (0), and saying our start equals 2
    #  if @start > list_of_words.length
    #    @start = 0
    # else
    #    @start
    #  end
    #return chunk_to_read.join(" ")
  #end
#end

p diary_entry = DiaryEntry.new("title", "this is some content")
p diary_entry.reading_chunk(2, 1)
p diary_entry.reading_chunk(2, 1)
p diary_entry.reading_chunk(2, 1)

