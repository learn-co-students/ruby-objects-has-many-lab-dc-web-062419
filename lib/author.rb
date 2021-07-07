class Author

    @@posts = []

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def posts
        @@posts
    end

    def add_post(post)
        new_post = post.author = self
        posts << post
    end

    def add_post_by_title(title)
        post = Post.new(title)
        add_post(post)
    end
    
    def self.post_count
        @@posts.count
    end
    
end