class ApplicationController < Sinatra::Base
    helpers Sinatra::AuthenticationHelper

    set :views, File.expand_path("../../views", __FILE__)
    set :public_folder, File.expand_path("../../public_folder", __FILE__)

    enable :sessions, :method_override

    get '/' do
        if current_user
            redirect "/users/#{current_user.id}"
        else
            erb :index
        end
    end

    get '/console' do
        binding.pry
    end
end
