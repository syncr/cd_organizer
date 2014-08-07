class Album
  attr_accessor :artist, :title

  @@title_all = []

  def Album.clear
    @@title_all = []
  end

  def Album.title_all ##class method
    @@title_all
  end

  def initialize (artist, title)
    @artist = Artist.new(artist)
    @title = title
    save
  end

  def save
    @@title_all << self
  end

  def Album.list
    @@title_all.map do |album|
      album.title
    end
  end

  def title
    @title
  end

## searching by Album title, returning Artist name
 def Album.title_search(user_input)
    Album.title_all.each do |album|
      if album.title == user_input
       return album.artist.artist
      end
    end
  end

 def Album.artist_search(user_input)
    Album.title_all.map do |album|
      if album.artist.artist == user_input
       album.title
      end
    end
  end

end



