require 'spec_helper.rb'

describe 'testing budget app' do

  before(:all) do
    @name = 'test'
    @driver = Appium::Driver.new(opts, true)
    @driver.start_driver
  end

  after(:all) do
    @driver.driver_quit
  end

  it "should open the app to the homepage" do
    expect(@driver.find_element(:id, "protect.budgetwatch:id/action_settings").displayed?).to be true
  end

  it "should have the budget option on the landing page" do
    expect(@driver.find_elements(:id, "protect.budgetwatch:id/menu")[0].text).to eq 'Budgets'
  end

  it "should access the budget page" do
    @driver.find_elements(:id, "protect.budgetwatch:id/menu")[0].click
    expect(@driver.find_element(:id, "protect.budgetwatch:id/action_calendar").displayed?).to be true
  end

  it "should be able to add a budget" do
    @driver.find_element(:id, "protect.budgetwatch:id/action_add").click
    @driver.find_element(:id, "protect.budgetwatch:id/budgetNameEdit").send_keys(@name)
    @driver.find_element(:id, "protect.budgetwatch:id/valueEdit").send_keys('30.00')
    @driver.find_element(:id, "protect.budgetwatch:id/action_save").click
    expect(@driver.find_elements(:id, "protect.budgetwatch:id/budgetName")[-2].text).to eq @name
  end

  it "should redirect to the homepage and go to transactions page" do
    @driver.find_element(:id, "Navigate up").click
    @driver.find_elements(:id, "protect.budgetwatch:id/menu")[1].click
    expect(@driver.find_element(:id, "protect.budgetwatch:id/search_button").displayed?).to be true
  end

  it "should be able to add a new transaction to the new budget" do
    @driver.find_element(:id, "Add").click
    @driver.find_element(:id, "protect.budgetwatch:id/nameEdit").send_keys(@name)
    expect(@driver.find_element(:id, "protect.budgetwatch:id/text").text).to eq @name
    @driver.find_element(:id, "protect.budgetwatch:id/accountEdit").send_keys(@name)
    sleep 1
    @driver.find_element(:id, "protect.budgetwatch:id/valueEdit").send_keys('10.00')
    # @driver.find_element(:id, "protect.budgetwatch:id/noteEdit").send_keys(@name)
    # expect(@driver.find_element(:id, "protect.budgetwatch:id/dateEdit").text).to eq Date.today
    @driver.find_element(:id, "protect.budgetwatch:id/action_save").click
  end

  it "should check to see if the budget has updated" do
    @driver.find_element(:id, "Navigate up").click
    @driver.find_elements(:id, "protect.budgetwatch:id/menu")[0].click
    @driver.find_element(:id, "protect.budgetwatch:id/budgetName").click
    expect(@driver.find_element(:id, "protect.budgetwatch:id/name").text).to eq @name
    # expect(@driver.find_element(:id, "protect.budgetwatch:id/value").text).to eq '10.00'
  end

end
