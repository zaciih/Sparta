class MapController < Sinatra::Base

  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }

  # Turn on Sinatra Reloader
  configure :development do
    register Sinatra::Reloader
  end

  # route to view all maps
  get '/maps' do

    @maps = MapsAPI.new.maps_index_service.get_all_maps

    erb :'maps/index'
  end

  # Show page for 1 map
  get '/maps/:id' do
    id = params[:id].gsub(" ", "%20")

    @map = MapsAPI.new.maps_show_service.get_map id

    erb :'maps/show'
  end

end
