class PostsController < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
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

  # Index
  get '/' do
    @title = "Sparta Blogs"
    @posts = $posts
    erb :'posts/index'
  end

  # New
  get '/new' do
    @title = "New Page"
    @post = {
      id: "",
      title: "",
      body: ""
    }
    erb :'posts/new'
  end

  # Show
  get '/:id' do
    @title = "Show Page"
    id = params[:id].to_i
    @post = $posts[id]
    erb :"posts/show"
  end

  # Edit
  get '/:id/edit' do
    @title = "Edit Page"
    id = params[:id].to_i
    @post = $posts[id]
    erb :"posts/edit"
  end

  # Create
  post '/' do
    new_post = {
      id: $posts.length,
      title: params[:title],
      body: params[:body]
    }

    $posts.push new_post

    redirect '/'
  end

  # Update
  put '/:id' do
    id = params[:id].to_i
    post = $posts[id]
    post[:title] = params[:title]
    post[:body] = params[:body]

    $posts[id] = post

    redirect "/#{id}"
  end

  # Delete
  delete '/:id' do
    id = params[:id].to_i

    $posts.delete_at id

    redirect '/'
  end

end
