require 'count_words'

RSpec.describe "count_words method" do
    it "given an empty string, returns error" do
        expect { (count_words("")) }.to raise_error "Please input a string"
    end

    it "given an integer, returns error" do
        expect{ (count_words(1234)) }.to raise_error "Please input a string"
    end

    it "if input is just spaces, returns error" do
        expect{ (count_words("   ")) }.to raise_error "Please input a string"
    end

    it "given a string, returns number of words" do
        expect(count_words("sup my dude")).to eq 3
    end
end
    