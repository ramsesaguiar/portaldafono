require 'test_helper'

class Admin::InterviewsControllerTest < ActionController::TestCase
  setup do
    @admin_interview = admin_interviews(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_interviews)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_interview" do
    assert_difference('Admin::Interview.count') do
      post :create, admin_interview: @admin_interview.attributes
    end

    assert_redirected_to admin_interview_path(assigns(:admin_interview))
  end

  test "should show admin_interview" do
    get :show, id: @admin_interview
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_interview
    assert_response :success
  end

  test "should update admin_interview" do
    put :update, id: @admin_interview, admin_interview: @admin_interview.attributes
    assert_redirected_to admin_interview_path(assigns(:admin_interview))
  end

  test "should destroy admin_interview" do
    assert_difference('Admin::Interview.count', -1) do
      delete :destroy, id: @admin_interview
    end

    assert_redirected_to admin_interviews_path
  end
end
