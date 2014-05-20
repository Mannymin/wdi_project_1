require 'test_helper'

class FriendGroupsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

end
