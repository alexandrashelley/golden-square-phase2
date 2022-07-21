require 'reading_time_estimate'

RSpec.describe "calculate reading time method" do
  context "nothing is inputted" do
    it "returns 0" do
      result = calculate_reading_time("")
        expect(result).to eq 0
    end
end

  context "less than 200 words are inputted" do
    it "returns 1" do
        result = calculate_reading_time("word ")
        expect(result).to eq 1
    end
end

  context "200 words are inputted" do
    it "returns 1" do
      result = calculate_reading_time("word " * 200)
        expect(result).to eq 1
    end
end

  context "400 words are inputted" do
    it "returns 2" do
      result = calculate_reading_time("word " * 400)
        expect(result).to eq 2
    end
  end
end