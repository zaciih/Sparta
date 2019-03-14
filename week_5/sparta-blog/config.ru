require "sinatra"
require "sinatra/reloader"
require_relative "controllers/post_controller.rb"

use Rack::MethodOverride

run PostsController
