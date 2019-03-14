require "selenium-webdriver"

class SeleniumQAToolsForm

  FORM_URL = 'http://toolsqa.com/automation-practice-form/'

  def initialize
    # Set up the driver for chrome
    @chrome_driver = Selenium::WebDriver.for :chrome
  end

  def visit_practice_form
    @chrome_driver.get(FORM_URL)
  end

  def input_firstname text
    @chrome_driver.find_element(:name, 'firstname').send_keys text
  end

  def input_lastname text
    @chrome_driver.find_element(:name, 'lastname').send_keys text
  end

  def select_sex_value id
    @chrome_driver.find_element(:id, "sex-#{id}").click
  end

  def select_experience
    for i in 0..6 do
      @chrome_driver.find_element(:id, "exp-#{i}").click
    end
  end

  def input_date text
    @chrome_driver.find_element(:id, 'datepicker').send_keys text
  end

  def select_profession id
    @chrome_driver.find_element(:id, "profession-#{id}").click
  end

  def select_automation_tool
    for i in 0..2 do
      @chrome_driver.find_element(:id, "tool-#{i}").click
    end
  end

  def select_continent
    continent = @chrome_driver.find_element(:id, 'continents')
    continent.click
    options = continent.find_elements(:tag_name, 'option')
    options.each do |option|
      option.click
    end
  end

  def select_command
    command = @chrome_driver.find_element(:id, 'selenium_commands')
    options = command.find_elements(:tag_name, 'option')
    options.each do |option|
      option.click
    end
  end

  def submit
    @chrome_driver.find_element(:id, 'submit').click
  end

end

x = SeleniumQAToolsForm.new
x.visit_practice_form
x.input_firstname 'zac'
sleep 2
x.input_lastname 'harrison'
sleep 2
x.select_sex_value 0
x.select_sex_value 1
sleep 2
x.select_experience
sleep 2
x.input_date 'date'
sleep 2
x.select_profession 0
x.select_profession 1
sleep 2
x.select_automation_tool
sleep 2
x.select_continent
sleep 2
x.select_command
sleep 2
x.submit
sleep 5
