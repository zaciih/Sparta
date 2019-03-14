require 'json'

json = File.read('json_example.json')

# puts json

json_parsed = JSON.parse(json)

json_parsed["colors"].each do |color|
  puts color["color"]
end
