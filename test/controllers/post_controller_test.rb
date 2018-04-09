require 'test_helper'

class PostControllerTest < ActionDispatch::IntegrationTest
  test "should get upsert" do
    get post_upsert_url
    assert_response :success
  end

  test "should get get" do
    get post_get_url
    assert_response :success
  end

  test "should get index" do
    get post_index_url
    assert_response :success
  end

end
