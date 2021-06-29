class Author

    attr_accessor :name, :posts



    def initialize(name)
        @name = name
    end

    def posts
        Post.all.select {|i| i.author == self}
       end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(title)
    new_post = Post.new(title)
    new_post.author = self
    end

    def self.post_count
        Post.all.count
    end
end