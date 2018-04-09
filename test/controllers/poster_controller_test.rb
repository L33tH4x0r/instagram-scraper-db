require 'test_helper'

class PosterControllerTest < ActionDispatch::IntegrationTest
  test "should get upsert" do
    get poster_upsert_url
    assert_response :success
  end

  test "should get get" do
    get poster_get_url
    assert_response :success
  end

  test "should get index" do
    get poster_index_url
    assert_response :success
  end

end
