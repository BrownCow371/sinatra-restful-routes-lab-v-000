class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
  get '/recipes' do
    erb :index
    @recipes = Recipe.all
  end

  get 'recipes/new' do
    erb :new
  end
end
