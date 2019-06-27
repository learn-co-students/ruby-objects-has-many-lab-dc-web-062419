require 'pry'
class Artist

    @@songs = []

    attr_reader :name

   def initialize(name)
        @name = name

   end

   def songs
     @@songs
   end

   def add_song(song)
    new_song = song.artist = self
    songs << song
   end

   def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
   end

   def self.song_count
        @@songs.count
   end
end