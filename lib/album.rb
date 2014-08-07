class Album
  attr_accessor :artist, :album

  @@albums = []
  def Album.albums ##class method
    @@albums
  end

  def initialize (artist, album)
    @artist = artist
    @album = album
  end

  def create

  end

  def list

  end

  def search_title

  end
end


