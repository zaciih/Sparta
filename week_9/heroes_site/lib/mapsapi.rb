require 'httparty'
require 'json'
require_relative "services/map_services/show_service"
require_relative "services/map_services/index_service"

class MapsAPI

  def maps_show_service
    MapShowService.new
  end

  def maps_index_service
    MapIndexService.new
  end

end
