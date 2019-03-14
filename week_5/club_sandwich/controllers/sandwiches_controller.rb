class SandwichesController < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  helpers Sinatra::Cookies

  set :sessions, true

  set :root, File.join(File.dirname(__FILE__), '..')
  set :views, Proc.new { File.join(root, "views") }


    get '/' do
      unless cookies[:visited]
        @message = true
        # cookies[:visited] = 1
        response.set_cookie(:visited, :value => 1, :expires => Time.now + 10)

      end

      @sandwiches = Sandwich.all
      erb :"sandwiches/index"
    end

    get '/new' do
      @sandwich = Sandwich.new
      erb :"sandwiches/new"
    end

    get '/:id' do
      id = params[:id].to_i
      if(!session[:sandwiches])
        session[:sandwiches] = []
      end
      if !session[:sandwiches].include? id
        session[:sandwiches].push id
      end

      print session[:sandwiches]

      @sandwich = Sandwich.find id
      erb :"sandwiches/show"
    end

    get '/:id/edit' do
      id = params[:id].to_i
      @sandwich = Sandwich.find id
      erb :"sandwiches/edit"
    end

    post '/' do
      sandwich = Sandwich.new

      sandwich.title = params[:title]
      sandwich.description = params[:decription]

      sandwich.save

      redirect '/'
    end

    put '/:id' do
      id = params[:id].to_i
      sandwich = Sandwich.find id

      sandwich.title = params[:title]
      sandwich.description = params[:description]


      sandwich.save

      redirect '/'
    end

    delete '/:id' do
      id = params[:id].to_i

      Sandwich.destroy id

      redirect '/'
    end
end
