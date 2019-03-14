require 'sinatra'
require 'sinatra/reloader' if development?

require_relative 'lib/heroesapi.rb'
require_relative 'lib/mapsapi.rb'
require_relative './app/controllers/static_controller.rb'
require_relative './app/controllers/hero_controller.rb'
require_relative './app/controllers/map_controller.rb'

use Rack::Reloader
use Rack::MethodOverride

# use StaticController
# run PunkController

run Rack::Cascade.new([
  StaticController,
  HeroController,
  MapController
])
