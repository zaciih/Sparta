require "sinatra"
require "sinatra/reloader" if development?

get '/' do
  index
end

get '/random' do
  "this is a random page"
end

def index
  "Hello world, this page has been updated"
end
