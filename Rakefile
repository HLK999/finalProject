require 'bundler'
Bundler.require

require 'sinatra/activerecord/rake'
require 'active_support/core_ext/string'
require_relative 'connection'

namespace :db do

    desc 'create framed db'
    task :create_db do
        conn = PG::Connection.open()
        conn.exec('CREATE DATABASE framed;')
        conn.close
    end

    desc 'drop framed db'
    task :drop_db do
        conn = PG::Connection.open()
        conn.exec('DROP DATABASE framed;')
        conn.close
    end

end
