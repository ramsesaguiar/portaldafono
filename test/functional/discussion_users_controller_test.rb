require 'test_helper'

class DiscussionUsersControllerTest < ActionController::TestCase
  setup do
    @discussion_user = discussion_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:discussion_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create discussion_user" do
    assert_difference('DiscussionUser.count') do
      post :create, discussion_user: @discussion_user.attributes
    end

    assert_redirected_to discussion_user_path(assigns(:discussion_user))
  end

  test "should show discussion_user" do
    get :show, id: @discussion_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @discussion_user
    assert_response :success
  end

  test "should update discussion_user" do
    put :update, id: @discussion_user, discussion_user: @discussion_user.attributes
    assert_redirected_to discussion_user_path(assigns(:discussion_user))
  end

  test "should destroy discussion_user" do
    assert_difference('DiscussionUser.count', -1) do
      delete :destroy, id: @discussion_user
    end

    assert_redirected_to discussion_users_path
  end
end
