require 'rspec'
require 'album'

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

end
