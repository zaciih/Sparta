require 'capybara'

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

session = Capybara::Session.new(:chrome)

session.visit('http://www.toolsqa.com/automation-practice-form/')

session.fill_in 'firstname', with: 'test'

sleep 2

session.choose 'exp-1'
session.choose 'sex-0'

sleep 2

session.find(:css, '#exp-4').click

sleep 2

session.select 'Africa', from: 'continents'

sleep 2
