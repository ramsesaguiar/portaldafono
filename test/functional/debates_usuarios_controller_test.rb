require 'test_helper'

class DebatesUsuariosControllerTest < ActionController::TestCase
  setup do
    @debates_usuario = debates_usuarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:debates_usuarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create debates_usuario" do
    assert_difference('DebatesUsuario.count') do
      post :create, debates_usuario: @debates_usuario.attributes
    end

    assert_redirected_to debates_usuario_path(assigns(:debates_usuario))
  end

  test "should show debates_usuario" do
    get :show, id: @debates_usuario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @debates_usuario
    assert_response :success
  end

  test "should update debates_usuario" do
    put :update, id: @debates_usuario, debates_usuario: @debates_usuario.attributes
    assert_redirected_to debates_usuario_path(assigns(:debates_usuario))
  end

  test "should destroy debates_usuario" do
    assert_difference('DebatesUsuario.count', -1) do
      delete :destroy, id: @debates_usuario
    end

    assert_redirected_to debates_usuarios_path
  end
end
