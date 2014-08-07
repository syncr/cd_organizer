require './lib/ui_methods'
require './lib/album'
require './lib/artist'
require 'pry'

new_album = Album.new("Pink Floyd","Dark Side of the Moon")
new_album2 = Album.new("Pink Floyd","Wish You Were Here")


# p Album.title_search("Dark Side of the Moon")
p Album.artist_search("Pink Floyd")

