require 'test_helper'

class Admin::DiscussionsControllerTest < ActionController::TestCase
  setup do
    @admin_discussion = admin_discussions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_discussions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_discussion" do
    assert_difference('Admin::Discussion.count') do
      post :create, admin_discussion: @admin_discussion.attributes
    end

    assert_redirected_to admin_discussion_path(assigns(:admin_discussion))
  end

  test "should show admin_discussion" do
    get :show, id: @admin_discussion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_discussion
    assert_response :success
  end

  test "should update admin_discussion" do
    put :update, id: @admin_discussion, admin_discussion: @admin_discussion.attributes
    assert_redirected_to admin_discussion_path(assigns(:admin_discussion))
  end

  test "should destroy admin_discussion" do
    assert_difference('Admin::Discussion.count', -1) do
      delete :destroy, id: @admin_discussion
    end

    assert_redirected_to admin_discussions_path
  end
end
