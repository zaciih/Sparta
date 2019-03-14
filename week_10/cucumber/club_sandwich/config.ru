require "sinatra"
require "sinatra/reloader"
require "sinatra/cookies"
require "pg"
require_relative "models/sandwich.rb"
require_relative "controllers/sandwiches_controller.rb"


use Rack::MethodOverride

run SandwichesController
