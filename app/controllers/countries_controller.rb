class CountriesController < ApplicationController
    # render and create a new entity 
    get '/countries/new' do
        erb :'/countries/new'
    end

    # show the list of countries
    get '/countries/show' do 
    end 



end