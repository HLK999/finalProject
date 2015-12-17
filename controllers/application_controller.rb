class ApplicationController < Sinatra::Base
    helpers Sinatra::AuthenticationHelper

    set :views, File.expand_path("../../views", __FILE__)
    set :public_folder, File.expand_path("../../public_folder", __FILE__)

    enable :sessions, :method_override

    # if logged in, then the main page redirects to the logged-in user's homepage.  otherwise it's the llama.
    get '/' do
        if current_user
            redirect "/users/#{current_user.id}"
        else
            erb :index
        end
    end

    # any request ending in 'styles.css' redirects to /styles/styles.css'
    get '/*/styles.css' do
        redirect '/styles/styles.css'
    end

    # for debugging
    get '/console' do
        binding.pry
    end
end
