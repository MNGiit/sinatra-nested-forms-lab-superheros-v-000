require 'sinatra/base'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }

  get "/" do
    erb :"../views/super_hero"
  end
  
  post "/teams" do
    @heroes = Hero.new(params[:hero])
    erb :"../views/team"
  end
  
  get "/teams" do
    erb :"../views/team"
  end
  
end
