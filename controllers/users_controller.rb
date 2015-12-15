class UsersController < ApplicationController

    get '/new' do
        erb :'/users/new'
    end

    post '/' do
        user = User.new(username: params[:username])
        user.password = params[:password]
        user.photo_path = user.format_photo_path(params[:photo][:filename])
        File.open("#{Dir.pwd}/public_folder/#{user.photo_path}", "wb") do |f|
            f.write(params[:photo][:tempfile].read)
        end
        user.birthplace = params[:birthplace]
        user.first_lang = params[:first_lang]
        user.dream_job = params[:dream_job]
        user.if_I_were_fancy = params[:if_I_were_fancy]
        user.favorite_quote = params[:favorite_quote]
        user.secret_quality = params[:secret_quality]
        user.save!
        redirect "/sessions/new"
    end

    get '/:id' do
        @user = User.find(params[:id])
        erb :'/users/show'
    end

    get '/:id/edit' do
        @user = User.find(params[:id])
        erb :'/users/edit'
    end

    patch '/:id' do
        user = User.find(params[:id])
        user.update(params[:user])
        if params[:new_password].length > 1
            user.password=params[:new_password]
            user.save!
        end
        redirect "/users/#{user.id}"
    end

end
