Given("I am on the BBC home page") do
  bbc_homepage.visit_homepage
  sleep 1
  expect(bbc_homepage.current_url).to eq 'https://www.bbc.co.uk/'
end

Given("I move to the sign in page") do
  bbc_homepage.click_sign_in
  sleep 1
  expect(bbc_sign_in_page.current_url).to eq 'https://account.bbc.com/signin'
end

When("I proceed to register") do
  bbc_sign_in_page.click_register_link
  sleep 1

end

When("I select I am over {int}") do |int|
  bbc_register_page.select_over_thirteen
  sleep 1
end

When("I input my DOB") do
  bbc_register_page.enter_DOB '11','03','1995'
  sleep 1
  bbc_register_page.click_next_button
  sleep 1

end

When(/^I input the necessary details with the password details (.*)$/) do |password|
  bbc_register_page.fill_in_password password
  sleep 1
  bbc_register_page.password_field
  sleep 3
end

Then(/^I receive the corresponding error (.*)$/) do |error|
  expect(bbc_register_page.check_error_message).to eq error
end

When(/^I input the necessary details with the username details (.*)$/) do |username|
  bbc_register_page.username_field.click
  bbc_register_page.fill_in_email username
  sleep 1
  bbc_register_page.password_field
  sleep 3
end

Then(/^I receive the corresponding username error (.*)$/) do |error|
  expect(bbc_register_page.check_username_error_message).to eq error
end
