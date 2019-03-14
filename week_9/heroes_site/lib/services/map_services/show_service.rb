class MapShowService

  include HTTParty

  attr_accessor :map

  def get_map id
    @map = JSON.parse(HTTParty.get("https://hotsapi.net/api/v1/maps/#{id}").body)
  end

end
