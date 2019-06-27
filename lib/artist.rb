require 'pry'
class Artist 

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def songs
        # binding.pry
        Song.all
    end

    def add_song(song)
        #Artist #add_song takes in an argument of a song
        # and associates that song with the artist
        #by telling the song that it belongs to that artist
        song.artist = self
        
       
    end

    def self.all
        @@all
    end


    def add_song_by_name(song_name)
       song =  Song.new(song_name)
       add_song(song)
    end

    def self.song_count
        Song.all.count
        # binding.pry
    end


end

# gold = Artist.new("Gold")
# gold.add_song_by_name("New Diamonds")
# gold.add_song_by_name("Newer Diamonds")
# gold.add_song_by_name("Newest Diamonds")
# gold.song_count

