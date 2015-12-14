require 'bundler'
Bundler.require(:default)

Dir.glob("./{controllers,models}/*.rb").each do |file|
    require file
    puts "require #{file}"
end

require_relative 'connection'

map('/users'){ run UsersController }
map('/'){ run ApplicationController }
