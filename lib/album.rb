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

  def title
    @title
  end

  def Album.list
    @@title_all.map do |album|
      album.title
    end
  end

## searching by Album title, returning Artist name
 def Album.title_search(user_input)
    #use select
    Album.title_all.map do |album|
      if album.title == user_input
       album.artist.artist_name
      end
    end
  end

 def Album.artist_search(user_input)
    #use select
    Album.title_all.map do |album|
      if album.artist.artist_name == user_input
       album.title
      end
    end
  end

end



