require "sinatra"
require "sinatra/reloader" if development?

# Index
get '/' do
  "<h1>Homepage</h1>"
end

# New
get '/new' do
  "<h1>This is where you can make new blogs</h1>"
end

# Show
get '/:id' do

  id = params[:id]

  "<h1>Show: #{id}</h1>"
end

# Edit
get '/:id/edit' do
  "<h1>Edit: #{params[:id]}</h1>"
end

# Create
post '/' do
  "<h1>Create</h1>"
end

# Update
put '/:id' do
  "<h1>Update: #{params[:id]}</h1>"
end

# Delete
delete '/:id' do
  "<h1>Delete: #{params[:id]}</h1>"
end
