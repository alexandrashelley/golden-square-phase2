require 'checking_grammar'

RSpec.describe "checking_grammar method" do
  it "returns error if nothing is inputted" do
    expect { (checking_grammar("")) }.to raise_error "Please input a string to check."
  end

  it "returns praise" do
    expect(checking_grammar("Please check my grammar.")).to eq "Nothing to correct! Nice job!"
  end

  it "returns negative feedback" do
    expect(checking_grammar("please check my grammar")).to eq "I noticed some errors..."
  end
end