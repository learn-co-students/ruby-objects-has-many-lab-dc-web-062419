require 'pry'

class Author

    attr_reader :name
    attr_accessor 

    @@all = []

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def self.all
        @@all
    end

    def posts
        Post.all.select {|post| post.author == self }
    end

    def add_post(post)
        post.author = self
        # Post.new(post).author = self
        #OBJECTION TO THE TEST. Since authors WRITE posts, this should create a new instance of a post, not just tack a name credit on an existing article
    end

    def add_post_by_title(title)
        # binding.pry
        Post.new(title).author = self
    end

    def self.post_count
        Post.all.length
    end

end