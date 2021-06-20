class UsersController < ApplicationController

    # render the login in page
    get '/login' do 
        erb :login
    end

    post '/login' do
        #find the user
        @user = User.find_by(email: params[:email])
        #authenticate the users
        if @user.authenticate(params[:password])
            redirect "/success"
        else 
            redirect "/failure"
        end
        
        #log in the user 
        # redirect the user to another page
    end

    get '/signup' do 
        erb :signup
    end




end
