class BudgetPage

  def initialize driver
    @driver = driver
    @name = 'test'
  end

  def check_budget_page_displayed
    @driver.find_element(:id, "protect.budgetwatch:id/action_calendar").displayed?
  end

  def enter_budget
    @driver.find_element(:id, "protect.budgetwatch:id/action_add").click
    @driver.find_element(:id, "protect.budgetwatch:id/budgetNameEdit").send_keys(@name)
    @driver.find_element(:id, "protect.budgetwatch:id/valueEdit").send_keys('30.00')
  end

  def save_budget
    @driver.find_element(:id, "protect.budgetwatch:id/action_save").click
  end

  def check_budget_displayed
    @driver.find_elements(:id, "protect.budgetwatch:id/budgetName")[-2].text
  end

  def select_budget
    @driver.find_elements(:id, "protect.budgetwatch:id/budgetName")[-2]
  end

end
