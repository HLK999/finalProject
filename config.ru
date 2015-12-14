require 'bundler'
Bundler.require(:default)

Dir.glob("./{controllers}/*.rb").each do |file|
    require file
    puts "require #{file}"
end

require_relative 'connection'

map('/'){ run ApplicationController }
