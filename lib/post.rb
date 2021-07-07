class Post
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def author
    @author
  end

  def author=(new_author)
    @author = new_author
  end

  def author_name
    if @author
      @author.name
    else
      nil
    end
  end

  def self.all
    @@all
  end

end
