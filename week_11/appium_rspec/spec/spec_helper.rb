require 'rspec'
require 'appium_lib'

RSpec.configure do |config|
  config.formatter = :documentation
end

def opts
  {
    caps: {
      "app": "/Users/tech-a58/Desktop/eng_23/week_11/apk/budgetwatch.apk",
      "platform_name": "Android",
      "device_name": "emulator-5554"
    }
  }
end
