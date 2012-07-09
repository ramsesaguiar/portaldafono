require 'test_helper'

class DuvidasControllerTest < ActionController::TestCase
  setup do
    @duvida = duvidas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:duvidas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create duvida" do
    assert_difference('Duvida.count') do
      post :create, duvida: @duvida.attributes
    end

    assert_redirected_to duvida_path(assigns(:duvida))
  end

  test "should show duvida" do
    get :show, id: @duvida
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @duvida
    assert_response :success
  end

  test "should update duvida" do
    put :update, id: @duvida, duvida: @duvida.attributes
    assert_redirected_to duvida_path(assigns(:duvida))
  end

  test "should destroy duvida" do
    assert_difference('Duvida.count', -1) do
      delete :destroy, id: @duvida
    end

    assert_redirected_to duvidas_path
  end
end
