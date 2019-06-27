class Author
    attr_accessor :name, :posts
@@count = 0
    def initialize(name)
        @name = name
        @posts = []
    end
    def add_post(post)
        @posts << post      
        post.author = self
        @@count +=1 
    end
    def add_post_by_title(title)
        post = Post.new(title)
        @posts << post
        post.author = self
        @@count +=1
    end
    def self.post_count
        @@count
    end

end




#     def add_song_by_name(name)
#         song = Song.new(name)
#         @songs << song
#         song.artist = self
#         @@count +=1
#     end
#   
#