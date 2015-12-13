require 'bundler'
Bundler.require
require_relative 'connection' #this line links the connection.rb file. We do it separately to make it look nice. Like html having link tags.

# Within any website there are actually a whole bunch of different pages. The server's job is know which page to show when, via paths or routes.
get '/' do
    erb :index
end

get '/whoa' do
    "whooaaa"
end

get '/hallelujah' do
    "Happy!"
end
