require 'test_helper'

class Admin::DiscussionControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
