Given("I access the sandwich homepage") do
  sammich_homepage.visit_home_page
  sleep 1
  expect(sammich_homepage.current_url).to eq 'http://localhost:9292/'
end

Then("The total number of sandwiches are displayed") do
  sammich_homepage.find_sammiches
  puts sammich_homepage.find_sammiches
  expect(sammich_homepage.find_sammiches).to eq 5
end

When(/^I click on a (.*)$/) do |sammich|
  sammich_homepage.sammich_link sammich
end

Then(/^I am taken to the show page of that sandwich (.*)$/) do |id|
  expect(sammich_show_page.current_url).to eq "http://localhost:9292/#{id}"
end
