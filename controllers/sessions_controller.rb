class SessionsController < ApplicationController

    # to the login page
    get '/new' do
        erb :'/sessions/new'
    end

    # If your login attempt had a username that matches a username in the database, AND if your entered password matches the database password, THEN log in and go to your homepage.  Otherwise, go to Layla the Llama.
    post '/' do
        redirect '/sessions/new' unless user = User.find_by(username: params[:username])
        if user.password == params[:password]
            session[:current_user] = user.id
            redirect "/"
        else
            redirect '/'
        end
    end

    # Log out; go to Layla. So, you log out by sending a delete request to the sessions controller.  Links can only handle get requests, so for that I use an html form.  (But those buttons are ugly, so I hid them.)
    delete '/' do
        session[:current_user] = nil
        redirect '/'
    end

end
