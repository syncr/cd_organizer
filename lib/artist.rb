class Artist

  @@catalogue_of_artists = []

  def Artist.catalogue_of_artists
    @@catalogue_of_artists
  end

  def initialize (artist)
    @artist = artist
    save
  end

  def artist
    @artist
  end

  def save
    @@catalogue_of_artists << self
  end
end

