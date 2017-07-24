class Photograph
  attr_reader :name, :artist_id,
              :museum_id, :year, :id

  def initialize(params=nil)
    @id        = params[:id]
    @name      = params[:name]
    @artist_id = params[:artist_id]
    @museum_id = params[:museum_id]
    @year      = params[:year]
  end

end
