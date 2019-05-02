require 'test_helper'

class BloggerControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get blogger_controller_index_url
    assert_response :success
  end

  test "should get show" do
    get blogger_controller_show_url
    assert_response :success
  end

  test "should get new" do
    get blogger_controller_new_url
    assert_response :success
  end

  test "should get create" do
    get blogger_controller_create_url
    assert_response :success
  end

end
