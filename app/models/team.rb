class Team
  
  attr_accessor :name, :motto
  @@all = []
  
  def initialize (params)
    @name = params[:name]
    @power = params[:motto]
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end