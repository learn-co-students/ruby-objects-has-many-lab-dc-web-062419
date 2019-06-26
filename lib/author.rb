class Author
  @@count = 0
  def initialize(name)
    @name = name
    @posts = []
    @@count += 1
  end

  attr_accessor :name, :posts

  def add_post(post)
    @posts << post
    post.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self
  end

  def self.post_count

  end
end