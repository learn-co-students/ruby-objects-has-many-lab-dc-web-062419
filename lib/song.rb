class Song
  @@all = []

  def initialize(name)
    @name = name
    @genre
    @artist
    @@all << self
  end

  attr_accessor :name, :artist, :genre

  def self.all
    return @@all
  end

  def artist_name
    if self.artist.nil? then nil else self.artist.name end
  end
end