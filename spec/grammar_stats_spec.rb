require 'grammar_stats'

RSpec.describe GrammarStats do

    it "text starts with a capital letter and ends with a punctuation mark" do
      check_grammar = GrammarStats.new
      expect(check_grammar.check("Hello.")).to eq true
    end

    it "text starts uncapitalised or without a punctuation mark at the end" do
      check_grammar = GrammarStats.new
      expect(check_grammar.check("Hello")).to eq false
      expect(check_grammar.check("hello.")).to eq false
      expect(check_grammar.check("!Hello")).to eq false
      expect(check_grammar.check("HeLlo")).to eq false
    end 

    it "no text is inputted" do
      check_grammar = GrammarStats.new
      expect { (check_grammar.check("")) }.to raise_error "Please input some words"
    end

    it "returns 100 if one correct string is checked" do
      check_grammar = GrammarStats.new
      check_grammar.check("Hello.")
      expect(check_grammar.percentage_good).to eq 100
    end

    it "returns 50 if one correct and one incorrect string is checked" do
        check_grammar = GrammarStats.new
        check_grammar.check("Hello.")
        check_grammar.check("Hello")
        expect(check_grammar.percentage_good).to eq 50
    end

    it "returns 33 if one correct and two incorrect strings are checked" do
        check_grammar = GrammarStats.new
        check_grammar.check("Hello.")
        check_grammar.check("Hello")
        check_grammar.check("hello")
        expect(check_grammar.percentage_good).to eq 33
    end

    it "input is an integer" do
      check_grammar = GrammarStats.new
      expect { (check_grammar.check(123)) }.to raise_error "Please input some words"
    end
end