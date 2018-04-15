class LikerApi < ApiInputService
  def initialize(opts={})
    super
    @user = User.find_or_create_by(name: @user[:name], url: @user[:url], )
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
    @like = Like.create(user_id: @user.id, post_id: @post.id )
    if @like.save
      return {like: @like.to_json, user: @user.to_json, post: @post.to_json}
    else
      return {error: "Like not saved"}
    end
  end
end
