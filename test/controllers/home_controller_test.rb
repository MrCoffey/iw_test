require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get wellcome" do
    get :wellcome
    assert_response :success
  end

end
