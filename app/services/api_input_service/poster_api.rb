class PosterApi < ApiInputService
  def initialize params
    super
    @national_park = NationalPark.find_by(name: @national_park)
  end

  def create
    unless @national_park
      return {error: "National Park not found"}
    end

    if create_associations
      return {poster: @poster, national_park: @national_park, post: @post}
    else
      return {error: @@save_error}
    end

  end

  private
  def create_associations
    # Create poster
    @poster = User.create(name: @name, url: @url, followers_count: @follower_count)
    # Check if post needs to get created
    unless @post
      @post = Post.create(national_park_id: @national_park.id, user_id: @poster.id)
    end

    @poster.posts << @post

    return @national_park.save && @post.save && @poster.save
  end
end
