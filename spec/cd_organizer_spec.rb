require 'rspec'
require 'album'
require 'artist'

describe 'Album' do
  before do
    Album.clear
  end

  describe '.clear' do
      it 'empties out all of the saved tasks' do
        Album.new("Pink Floyd","Dark Side of the Moon").save
        Album.clear
        Album.title_all.should eq []
      end
    end


  describe 'albums' do
    it "will create a empty array for all albums" do
      expect(Album.title_all).to eq([])
    end
  end

  describe 'initialize' do
    it "will create an instance of an Album" do
      new_album = Album.new("Pink Floyd","Dark Side of the Moon")
      expect(new_album).to be_an_instance_of(Album)
    end
  end

  describe 'initialize' do
    it 'will create an album object with artist and album attributes' do
      new_album = Album.new("Pink Floyd","Dark Side of the Moon")
      expect(new_album.artist).to be_an_instance_of(Artist)
      expect(new_album.title).to eq("Dark Side of the Moon")
    end
  end


  describe 'save' do
    it "will store an album in @@albums" do
      new_album = Album.new("Pink Floyd","Dark Side of the Moon")
      new_album.save
      expect(Album.title_all[0]).to be_an_instance_of(Album)
    end
  end

  describe 'list' do
    it "will list out all albums objects in the changer" do
      new_album = Album.new("Pink Floyd","Dark Side of the Moon")
      new_album2 = Album.new("The Beatles","The White Album")
      new_album3 = Album.new("The Smiths", "Hatful of Hollow")
      new_album4 = Album.new("The Sex Pistols", "Anarchy in the UK")
      new_album5 = Album.new("Joy Division", "Closer")
      expect(Album.list).to eq(["Dark Side of the Moon", "The White Album", "Hatful of Hollow", "Anarchy in the UK", "Closer"])
    end
  end

  describe 'title_search' do
    it "will take user input and search across all albums, returning album title for each positive match" do
      new_album = Album.new("Pink Floyd","Dark Side of the Moon")
      new_album = Album.new("Pink Lloyd","Dark Side of the Moon")
      expect(Album.title_search("Dark Side of the Moon")).to eq(["Pink Floyd", "Pink Lloyd"])
    end
  end

  describe 'artist_search' do
    it "will take user input and search across all artists, returning all album titles for each positive match" do
      new_album = Album.new("Pink Floyd","Dark Side of the Moon")
      new_album2 = Album.new("Pink Floyd","Wish You Were Here")
      expect(Album.artist_search("Pink Floyd")).to eq(["Dark Side of the Moon", "Wish You Were Here"])
    end
  end
end

describe 'Artist' do
  before do
    Artist.clear
  end

  describe 'initialize' do
    it "will create an instance of a changer" do
      new_artist = Artist.new("The Monkees")
      expect(new_artist).to be_an_instance_of(Artist)
    end
  end

  describe 'save' do
    it "will store an artist in @@catalogue_of_artists" do
      new_album = Album.new("Pink Floyd","Dark Side of the Moon")
      new_album.artist
      expect(Artist.all_artists[0]).to be_an_instance_of(Artist)
    end
  end

  describe 'list' do
    it "will list out all albums objects in the changer" do
      new_album = Album.new( "Pink Floyd","Dark Side of the Moon")
      new_album2 = Album.new("The Beatles","The White Album")
      new_album3 = Album.new("The Smiths", "Hatful of Hollow")
      new_album4 = Album.new("The Sex Pistols", "Anarchy in the UK")
      new_album5 = Album.new("Joy Division", "Closer")
      expect(Artist.list_all_artists).to eq(["Pink Floyd","The Beatles","The Smiths","The Sex Pistols","Joy Division"])
    end
  end
end
