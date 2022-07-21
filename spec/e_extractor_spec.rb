require 'e_extractor'

RSpec.describe "e_extractor method" do
    it "given an empty string returns an empty string" do
        result = e_extractor("")
        expect(result).to eq ""
    end

    it "given a srting without any es in it returns the same" do
        result = e_extractor("sup diggity dawg")
        expect(result).to eq "sup diggity dawg"
    end

    it "given a string with an e in it, brings it to the start" do
        result = e_extractor("hello")
        expect(result).to eq "ehllo"
    end

    it "given a string with multiple es in it, brings them to the start" do
        result = e_extractor("heeello")
        expect(result).to eq "eeehllo"
    end

    it "if e at start, still moves them earlier" do
        result = e_extractor("eeelloe")
        expect(result).to eq "eeeello"
    end
end
      