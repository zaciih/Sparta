class PostsController < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  set :root, File.join(File.dirname(__FILE__), '..')

  set :views, Proc.new { File.join(root, "views") }

  $posts = [{
    id: 0,
    title: "Post 1",
    body: "This is the first post"
    },{
    id: 1,
    title: "Post 2",
    body: "This is the second post"
    },{
    id: 2,
    title: "Post 3",
    body: "This is the third post"
    }]

    $pages = [{
      id: 0,
      title: "Page 1",
      body: "This is the first page"
      },{
      id: 1,
      title: "Page 2",
      body: "This is the second page"
      },{
      id: 2,
      title: "Page 3",
      body: "This is the third page"
      }]

  get '/' do
    @title = "Practice Site"
    @posts = $posts
    erb :'posts/index'
  end

  get '/new' do
    @title = "Page1"
    @pages = $pages
    erb :'posts/Page1'
  end

  get '/:id' do
    id = params[:id]
    "<h1>Show: #{id}</h1>"
  end

  get '/:id/edit' do
    "<h1>Edit: #{params[:id]}</h1>"
  end

  post '/' do
    "<h1>Create</h1>"
  end

  put '/:id' do
    "<h1>Update: #{params[:id]}</h1>"
  end

  delete '/:id' do
    "<h1>Delete: #{params[:id]}</h1>"
  end
end
