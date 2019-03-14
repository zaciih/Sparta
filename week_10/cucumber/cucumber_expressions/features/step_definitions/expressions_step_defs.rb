Given("I provide an integer {int}") do |int|
  expect(int.class).to be Fixnum
  @num = int
end


Then("I will be able to test the integer") do
  expect(@num).to eq 22
end


Given("I provide a specific word {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end


Then("I will be able to use the word") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I have {int} monies/peanut(s)") do |int|
  @num = int
  puts @num
end

Then("I can buy pizza") do
  puts @num
end

Given(/^I provide a specific something like (.*) I can capture it using a regex$/) do |captured_thing|
  puts captured_thing
end

Then("I will be unstoppable") do

end

Given(/^I provide an email address (\w+@\w+\.\w+\.?\w*)$/) do |email|
  puts email
end

# {int} - looks for integer
# {float} - looks for a float
# {word} - looks for an individual word eg. 'eggs' but NOT 'scrambled eggs'
# {string} - looks for a group of words/sentence
