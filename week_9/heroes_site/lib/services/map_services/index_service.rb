class MapIndexService

  include HTTParty

  attr_accessor :maps

  def get_all_maps
    @maps = JSON.parse(HTTParty.get("https://hotsapi.net/api/v1/maps").body)
  end

end
