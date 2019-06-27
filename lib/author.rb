class Author
    attr_accessor :name, :posts

    @@posts_count = 0

    def initialize(name)
        @name = name 
        @posts = []
    end

    def add_post(post)
        post.author = self
        @posts << post
        @@posts_count += 1 
    end

    def add_post_by_title(post_title)
        new_post = Post.new(post_title)
        new_post.author = self
        @posts << new_post
        @@posts_count += 1 
    end

    def self.post_count
        @@posts_count
    end
end
