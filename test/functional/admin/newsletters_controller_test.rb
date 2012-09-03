require 'test_helper'

class Admin::NewslettersControllerTest < ActionController::TestCase
  setup do
    @admin_newsletter = admin_newsletters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_newsletters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_newsletter" do
    assert_difference('Admin::Newsletter.count') do
      post :create, admin_newsletter: @admin_newsletter.attributes
    end

    assert_redirected_to admin_newsletter_path(assigns(:admin_newsletter))
  end

  test "should show admin_newsletter" do
    get :show, id: @admin_newsletter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_newsletter
    assert_response :success
  end

  test "should update admin_newsletter" do
    put :update, id: @admin_newsletter, admin_newsletter: @admin_newsletter.attributes
    assert_redirected_to admin_newsletter_path(assigns(:admin_newsletter))
  end

  test "should destroy admin_newsletter" do
    assert_difference('Admin::Newsletter.count', -1) do
      delete :destroy, id: @admin_newsletter
    end

    assert_redirected_to admin_newsletters_path
  end
end
