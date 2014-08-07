class Artist

  @@all_artists = []

  def Artist.clear
    @@all_artists = []
  end

  def Artist.all_artists
    @@all_artists
  end

  def initialize (artist_name)
    @artist_name = artist_name
    save
  end

  def artist_name
    @artist_name
  end

  def save
    @@all_artists << self
  end

  def Artist.list_all_artists
    @@all_artists.map do |artist|
      artist.artist_name
    end
  end
end

