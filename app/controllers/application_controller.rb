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
    erb :"../views/team"
  end
  
  get "/teams" do
    erb :"../views/team"
  end
  
end


    post "/pirates" do
      # @pirate = Pirate.new(params[:pirate.name], params[:weight], params[:height]) # doesn't work
      # get a single pirate's information ready
      @pirate = Pirate.new(params[:pirate])
      
      # pirate can have ships
      @ships = []
      params[:pirate][:ships].each do |info|
        @ships << Ship.new(info)
      end
      
      erb :"pirates/show"
    end