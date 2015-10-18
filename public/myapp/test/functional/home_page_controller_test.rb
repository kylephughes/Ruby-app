require 'test_helper'

class HomePageControllerTest < ActionController::TestCase
  test "should get lesson" do
    get :lesson
    assert_response :success
  end

end
