class HeroesShowService

  include HTTParty

  attr_accessor :hero

  def get_hero id
    @hero = JSON.parse(HTTParty.get("https://hotsapi.net/api/v1/heroes/#{id}").body)
  end

end
