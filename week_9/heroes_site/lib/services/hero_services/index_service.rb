class HeroesIndexService

  include HTTParty

  attr_accessor :heroes

  def get_all_heroes
    @heroes = JSON.parse(HTTParty.get("https://hotsapi.net/api/v1/heroes").body)
  end

end
