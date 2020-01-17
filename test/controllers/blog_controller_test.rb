require 'test_helper'

class BlogControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get blog_index_url
    assert_response :success
  end

  test "should get single_blog" do
    get blog_single_blog_url
    assert_response :success
  end

end
