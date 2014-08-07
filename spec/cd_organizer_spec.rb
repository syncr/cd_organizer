require 'rspec'
require 'album'
require 'artist'

describe 'Album' do
  describe 'initialize' do
    it "will create an instance of an Album" do
      new_album = Album.new("Pink Floyd","Dark Side of the Moon")
      expect(new_album).to be_an_instance_of(Album)
    end
  end

  describe 'initialize' do
    it 'will create an album object with artist and album attributes' do
      new_album = Album.new("Pink Floyd","Dark Side of the Moon")
      expect(new_album.artist).to eq("Pink Floyd")
      expect(new_album.album).to eq("Dark Side of the Moon")
    end
  end

  describe 'albums' do
    it "will create a empty array for all albums" do
      expect(Album.albums).to eq([])
    end
  end
end


describe 'Artist' do
  describe 'initialize' do
    it "will create an instance of a changer" do
      new_artist = Artist.new()
      expect(new_artist).to be_an_instance_of(Artist)
    end
  end
end
