require 'test_helper'

class AutoresControllerTest < ActionController::TestCase
  setup do
    @autor = autores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:autores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create autor" do
    assert_difference('Autor.count') do
      post :create, autor: @autor.attributes
    end

    assert_redirected_to autor_path(assigns(:autor))
  end

  test "should show autor" do
    get :show, id: @autor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @autor
    assert_response :success
  end

  test "should update autor" do
    put :update, id: @autor, autor: @autor.attributes
    assert_redirected_to autor_path(assigns(:autor))
  end

  test "should destroy autor" do
    assert_difference('Autor.count', -1) do
      delete :destroy, id: @autor
    end

    assert_redirected_to autores_path
  end
end
