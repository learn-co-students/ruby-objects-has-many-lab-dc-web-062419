class Artist
    @@all = []
    

    attr_reader 
    attr_accessor :name

    def initialize(name)
        @name = name
        self.class.all << name
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select {|s| s.artist = self}
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(sname)
        # newtrack = Song.new(sname)
        # newtrack.artist = self   
        Song.new(sname).artist = self   
    end

    def self.song_count
        Song.all.length
    end


end