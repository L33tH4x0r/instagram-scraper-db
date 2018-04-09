require 'test_helper'

class NationalParkControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get national_park_index_url
    assert_response :success
  end

  test "should get upsert" do
    get national_park_upsert_url
    assert_response :success
  end

  test "should get get" do
    get national_park_get_url
    assert_response :success
  end

end
