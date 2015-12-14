class UsersController < ApplicationController

    get '/new' do
        erb :'/users/new'
    end

    post '/' do
        user = User.new(username: params[:username])
        user.password = params[:password]
        user.avatar = params[:avatar]
        user.birthplace = params[:birthplace]
        user.first_lang = params[:first_lang]
        user.dream_job = params[:dream_job]
        user.if_I_were_fancy = params[:if_I_were_fancy]
        user.favorite_quote = params[:favorite_quote]
        user.more_info = params[:more_info]
        user.save!
        redirect '/'
    end

end
