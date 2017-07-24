require './lib/museum'
class Curator
  attr_accessor :artists, :museums, :photographs

  def initialize
    @artists = []
    @museums = []
    @photographs = []
  end

  def add_museum(museum)
    museums << Museum.new(museum)
  end

  def add_artist(artist)
    artists << Artist.new(artist)
  end

  def add_photograph(pic)
    photographs << Photograph.new(pic)
  end
end
