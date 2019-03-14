require 'appium_lib'
require 'rspec'
require 'cucumber'
require_relative '../../lib/budget_app.rb'

def opts
  {
    caps: {
      "app": "/Users/tech-a58/Desktop/eng_23/week_11/apk/budgetwatch.apk",
      "platform_name": "Android",
      "device_name": "emulator-5554"
    }
  }
end

Appium::Driver.new(opts, true)


World(BudgetApp)
