require 'diary_entry'

RSpec.describe do DiaryEntry

    it "returns zero if no content is inputted" do
      diary_entry = DiaryEntry.new("a title", "")
      expect(diary_entry.count_words).to eq 0
    end

    it "returns number of words in the content as an integer" do
        diary_entry = DiaryEntry.new("a title", "this is some content")
        expect(diary_entry.count_words).to eq 4
    end

    it "returns an integer representing wpm" do
        diary_entry = DiaryEntry.new("a title", "this is some content")
        expect(diary_entry.reading_time(2)).to eq 2
    end

    context "returns first chunk of words to read"
    it "returns the first chunk of words to read" do
        diary_entry = DiaryEntry.new("a title", "this is some content")
        expect(diary_entry.reading_chunk(2, 1)).to eq "this is"
    end 

      it "returns next chunk of words to read" do
        diary_entry = DiaryEntry.new("a title", "this is some content")
        diary_entry.reading_chunk(2, 1)
        expect(diary_entry.reading_chunk(2, 1)).to eq "some content"
      end

      it "restart from beginning" do
        diary_entry = DiaryEntry.new("a title", "this is some content")
        diary_entry.reading_chunk(2, 1)
        diary_entry.reading_chunk(2, 1)
        diary_entry.reading_chunk(2, 1)
        reset = diary_entry.reading_chunk(2, 1)
        expect(reset).to eq "this is"
      end
end