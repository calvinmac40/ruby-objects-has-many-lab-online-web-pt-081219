class Author 
  attr_accessor :name, :posts 
  
   #@@post_count = 0 
   
   
  def initialize(name)
    @name = name
    @posts = []
    #@@post_count  
  end
  
  def add_post(post)
    @posts << post
    post.author = self
    #@@post_count += 1
  end
  
  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self
    #@@post_count += 1
  end
  
  def posts 
    Post.all.each do |post|
      post
    end
  end
  
  def self.post_count
    Post.all.length do |post|
      post
    end
  end
end