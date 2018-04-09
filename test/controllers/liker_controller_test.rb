require 'test_helper'

class LikerControllerTest < ActionDispatch::IntegrationTest
  test "should get upsert" do
    get liker_upsert_url
    assert_response :success
  end

  test "should get get" do
    get liker_get_url
    assert_response :success
  end

  test "should get index" do
    get liker_index_url
    assert_response :success
  end

end
