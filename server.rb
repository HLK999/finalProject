require 'bundler'
Bundler.require
require_relative 'connection'

get '/' do
    erb :index
end
