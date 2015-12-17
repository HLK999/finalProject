require 'bundler'
Bundler.require
require_relative 'connection' #This line links the connection.rb file. It's done separately to make it look nice. It's kinda like html having link tags.

# Within any website there are actually a whole bunch of different pages. The server's job is know which page to show when, via paths or routes.
# get '/' do
#     erb :index
# end
#
# get '/users/new' do
#
# end
#
# get '/whoa' do
#     "whooaaa"
# end
#
# get '/hallelujah' do
#     "Happy!"
# end
