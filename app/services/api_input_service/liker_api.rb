class LikerApi < ApiInputService
  def initialize(opts={})
    super
    @user = User.create(name: @user[:name], url: @user[:url], )
    @post = Post.find(@post_id.to_i)
  end
  # Needs A user and a post id
  def create
    unless @post
      return {error: "Post not found"}
    end

    unless @user
      return {error: "User not not created"}
    end
    
    return Like.create(user_id: @user.id, post_id: @post.id )
  end
end
