class Post

  @@all = []

  def initialize(title)
    @title = title
    @author
    @@all << self
  end

  attr_accessor :title, :author

  def self.all
    return @@all
  end

  def author_name
    if self.author.nil? then nil else self.author.name end
  end
end