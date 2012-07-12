require 'test_helper'

class Admin::SuperHighlightsControllerTest < ActionController::TestCase
  setup do
    @admin_super_highlight = admin_super_highlights(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_super_highlights)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_super_highlight" do
    assert_difference('Admin::SuperHighlight.count') do
      post :create, admin_super_highlight: @admin_super_highlight.attributes
    end

    assert_redirected_to admin_super_highlight_path(assigns(:admin_super_highlight))
  end

  test "should show admin_super_highlight" do
    get :show, id: @admin_super_highlight
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_super_highlight
    assert_response :success
  end

  test "should update admin_super_highlight" do
    put :update, id: @admin_super_highlight, admin_super_highlight: @admin_super_highlight.attributes
    assert_redirected_to admin_super_highlight_path(assigns(:admin_super_highlight))
  end

  test "should destroy admin_super_highlight" do
    assert_difference('Admin::SuperHighlight.count', -1) do
      delete :destroy, id: @admin_super_highlight
    end

    assert_redirected_to admin_super_highlights_path
  end
end
