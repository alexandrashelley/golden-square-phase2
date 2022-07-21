require 'make_snippet'

RSpec.describe "make_snippet" do

it "returns the first five words and '...' if there are more than five words" do
    expect(make_snippet("this string is more than five words")).to eq "this string is more than..."
end

it "fails if no argument is given" do
    expect { (make_snippet("")) }.to raise_error "Please input string"
end

it "returns string if there are less than five words" do
    expect(make_snippet("two words")).to eq "two words"
end

it "fails if input has hello?" do
    expect { (make_snippet("hel?lo")) }.to raise_error "Please input string"
end

it "fails if user inputs integers" do
    expect { (make_snippet(1234)) }.to raise_error "Please input string"
end

it "fails if input string is just spaces" do
    expect { (make_snippet(" ")) }.to raise_error "Please input string"
end

end

