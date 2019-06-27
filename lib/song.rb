class Song
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def artist
    @artist
  end

  def artist=(new_artist)
    @artist = new_artist
  end

  def artist_name
    if @artist
      @artist.name
    else
      nil
    end
  end

  def self.all
    @@all
  end

end
