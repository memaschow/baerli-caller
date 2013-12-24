require 'test_helper'

class ImageControllerTest < ActionController::TestCase
  test "should get funny" do
    get :funny
    assert_response :success
  end

  test "should get moody" do
    get :moody
    assert_response :success
  end

  test "should get bad" do
    get :bad
    assert_response :success
  end

end
