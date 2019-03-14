require 'httparty'
require 'json'
require_relative "services/hero_services/show_service"
require_relative "services/hero_services/index_service"

class HeroesAPI

  def heroes_show_service
    HeroesShowService.new
  end

  def heroes_index_service
    HeroesIndexService.new
  end

end
