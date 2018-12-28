require 'sinatra/base'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }

  get "/" do
    erb :"../views/super_hero"
  end
  
  post "/teams" do
    @team = Team.new(params[:team])
    
    params[:team][:hero].each do |info|
      Hero.new(info)
    end
    
    @heroes = Hero.all
    binding.pry
    erb :"../views/team"
  end
  
  get "/teams" do
    erb :"../views/team"
  end
  
end