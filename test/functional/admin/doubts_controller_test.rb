require 'test_helper'

class Admin::DoubtsControllerTest < ActionController::TestCase
  setup do
    @admin_doubt = admin_doubts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_doubts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_doubt" do
    assert_difference('Admin::Doubt.count') do
      post :create, admin_doubt: @admin_doubt.attributes
    end

    assert_redirected_to admin_doubt_path(assigns(:admin_doubt))
  end

  test "should show admin_doubt" do
    get :show, id: @admin_doubt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_doubt
    assert_response :success
  end

  test "should update admin_doubt" do
    put :update, id: @admin_doubt, admin_doubt: @admin_doubt.attributes
    assert_redirected_to admin_doubt_path(assigns(:admin_doubt))
  end

  test "should destroy admin_doubt" do
    assert_difference('Admin::Doubt.count', -1) do
      delete :destroy, id: @admin_doubt
    end

    assert_redirected_to admin_doubts_path
  end
end
