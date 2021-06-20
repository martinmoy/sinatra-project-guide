class UsersController < ApplicationController

    # render the login in page
    get '/login' do 
        erb :login
    end

    get '/signup' do 
        erb :signup
    end




end
