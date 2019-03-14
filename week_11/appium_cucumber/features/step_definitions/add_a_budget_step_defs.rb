Given("I can access the app") do
  expect(homepage.check_homepage_displayed).to be true
end

When("I click budget") do
  homepage.click_budget
  sleep 2
end

Then("the budget page opens") do
  expect(budget_page.check_budget_page_displayed).to be true
end


When("I enter a budget") do
  budget_page.enter_budget
  sleep 2
  budget_page.save_budget
end

Then("the budget is saved and displayed") do
  expect(budget_page.check_budget_displayed).to eq 'test'
end

Given("a budget is displayed") do
  budget_page.enter_budget
  sleep 2
  budget_page.save_budget
  expect(budget_page.check_budget_displayed).to eq 'test'
end

When("I delete the budget") do
  budget_page.select_budget.touch_action(:press, hold: 1000)
end

Then("it will be removed from the list") do
  pending # Write code here that turns the phrase above into concrete actions
end
