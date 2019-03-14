class HeroController < Sinatra::Base

  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }

  # Turn on Sinatra Reloader
  configure :development do
    register Sinatra::Reloader
  end

  # route to view all heroes
  get '/heroes' do

    @heroes = HeroesAPI.new.heroes_index_service.get_all_heroes

    erb :'heroes/index'
  end

  # Show page for 1 hero
  get '/heroes/:id' do
    id = params[:id].gsub(" ", "%20")

    @hero = HeroesAPI.new.heroes_show_service.get_hero id

    erb :'heroes/show'
  end

end
