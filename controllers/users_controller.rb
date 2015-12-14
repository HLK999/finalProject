class UsersController < ApplicationController

    get '/new' do
        erb :'/users/new'
    end

    post '/' do
        binding.pry
    end

end
