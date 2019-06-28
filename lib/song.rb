class Song

	attr_accessor :artist, :name

	@@all = []
	def initialize(name)
		@name = name
		@@all << self
	end

	def self.all
		@@all
	end

	def artist_name
		#supposed to know name of artist
		#if it doesn't have an artist, return nil
		#binding.pry
		#artist.name
		#self.artist.name
		if artist == nil
			nil
		else 
			self.artist.name
		end
	end

end