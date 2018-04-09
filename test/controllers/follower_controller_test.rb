require 'test_helper'

class FollowerControllerTest < ActionDispatch::IntegrationTest
  test "should get upsert" do
    get follower_upsert_url
    assert_response :success
  end

  test "should get get" do
    get follower_get_url
    assert_response :success
  end

  test "should get index" do
    get follower_index_url
    assert_response :success
  end

end
