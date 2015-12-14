require 'bundler'
Bundler.require(:default)

Dir.glob("./{controllers,models}/*.rb").each do |file|
    require file
    puts "require #{file}"
end

require_relative 'connection'

map('/users'){ run UsersController }
map('/sessions'){ run SessionsController }
map('/'){ run ApplicationController }
