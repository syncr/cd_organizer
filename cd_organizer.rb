require './lib/album'
require './lib/artist'
require 'pry'

# p Album.title_search("Dark Side of the Moon")
# p Album.artist_search("Pink Floyd")

system 'clear'
def main_menu
  puts "What do you want?"
  puts "Press 'a' to add a new Album."
  puts "Press 't' to view all album titles"
  puts "Press 'n' to view all artist names"
  puts "Press 'f' to find an artist"
  puts "Press 's' to show all albums by artist"
  puts "Press 'x' to exit"
  main_menu_input = gets.chomp
  if main_menu_input == "x"
    exit
  elsif main_menu_input == "a"
    puts "What's the name of this rubbish album?"
    album_title = gets.chomp
    puts "Which awful artist came up with this terrible album?"
    artist_name = gets.chomp
    system 'clear'
    Album.new(artist_name, album_title)
  elsif main_menu_input == "t"
    puts Album.list
  elsif main_menu_input == "n"
    puts Artist.list_all_artists

  elsif main_menu_input == "f"
    puts "Type the name of the album"
    album_name = gets.chomp
    puts "#{album_name} was released by the following artists:"
    puts Album.title_search(album_name)

  elsif main_menu_input == "s"
    puts "Type the name of the artist"
    artist_name = gets.chomp
    puts "Here are the albums by #{artist_name}"
    puts Album.artist_search(artist_name)

  end
  main_menu
end
main_menu


