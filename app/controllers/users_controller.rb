class UsersController < ApplicationController

    # render the login in page
    get '/login' do 
        erb :login
    end

    post '/login' do
        #find the user
        @user = User.find_by(email: params[:email])
        #authenticate the users
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            put session
            redirect "/users/#{@user.id}"

        else 
            redirect "/failure"
        end
        
        #log in the user 
        # redirect the user to another page
    end

    get '/signup' do 
        erb :signup
    end

    post '/users' do 
        if params[:name] !="" && params[:email] != "" && params[:password] != ""
            @user = User.create(params)
            session[:user_id] = @user.id
            redirect "/users/#{@user.id}"
        else 
            redirect '/signup'

        end
    end

    get '/users/:id' do 
        @user = User.find_by(id: params[:id])
        erb :'users/show'
    end

    get 'logout' do
        session.clear
        redirect '/'
    end




end
