require 'test_helper'

class SuperHighlightsControllerTest < ActionController::TestCase
  setup do
    @super_highlight = super_highlights(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:super_highlights)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create super_highlight" do
    assert_difference('SuperHighlight.count') do
      post :create, super_highlight: @super_highlight.attributes
    end

    assert_redirected_to super_highlight_path(assigns(:super_highlight))
  end

  test "should show super_highlight" do
    get :show, id: @super_highlight
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @super_highlight
    assert_response :success
  end

  test "should update super_highlight" do
    put :update, id: @super_highlight, super_highlight: @super_highlight.attributes
    assert_redirected_to super_highlight_path(assigns(:super_highlight))
  end

  test "should destroy super_highlight" do
    assert_difference('SuperHighlight.count', -1) do
      delete :destroy, id: @super_highlight
    end

    assert_redirected_to super_highlights_path
  end
end
