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

p diary_entry = DiaryEntry.new("title", "this is some content")
p diary_entry.reading_chunk(2, 1)
p diary_entry.reading_chunk(2, 1)
p diary_entry.reading_chunk(2, 1)

