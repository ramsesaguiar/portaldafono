require 'test_helper'

class SuperDestaquesControllerTest < ActionController::TestCase
  setup do
    @super_destaque = super_destaques(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:super_destaques)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create super_destaque" do
    assert_difference('SuperDestaque.count') do
      post :create, super_destaque: @super_destaque.attributes
    end

    assert_redirected_to super_destaque_path(assigns(:super_destaque))
  end

  test "should show super_destaque" do
    get :show, id: @super_destaque
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @super_destaque
    assert_response :success
  end

  test "should update super_destaque" do
    put :update, id: @super_destaque, super_destaque: @super_destaque.attributes
    assert_redirected_to super_destaque_path(assigns(:super_destaque))
  end

  test "should destroy super_destaque" do
    assert_difference('SuperDestaque.count', -1) do
      delete :destroy, id: @super_destaque
    end

    assert_redirected_to super_destaques_path
  end
end
