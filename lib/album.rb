class Album
  attr_accessor :artist, :album

  @@albums = []
  def Album.albums ##class method
    @@albums
  end

  def initialize (artist, album)
    @artist = Artist.new(artist)
    @album = album
  end

  def save
    @@albums << self
  end

  def list

  end

  def search_title

  end
end


