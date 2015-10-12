require 'test_helper'

class TiposDeDepositosControllerTest < ActionController::TestCase
  setup do
    @tipos_de_deposito = tipos_de_depositos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipos_de_depositos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipos_de_deposito" do
    assert_difference('TiposDeDeposito.count') do
      post :create, tipos_de_deposito: { nombre: @tipos_de_deposito.nombre }
    end

    assert_redirected_to tipos_de_deposito_path(assigns(:tipos_de_deposito))
  end

  test "should show tipos_de_deposito" do
    get :show, id: @tipos_de_deposito
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipos_de_deposito
    assert_response :success
  end

  test "should update tipos_de_deposito" do
    patch :update, id: @tipos_de_deposito, tipos_de_deposito: { nombre: @tipos_de_deposito.nombre }
    assert_redirected_to tipos_de_deposito_path(assigns(:tipos_de_deposito))
  end

  test "should destroy tipos_de_deposito" do
    assert_difference('TiposDeDeposito.count', -1) do
      delete :destroy, id: @tipos_de_deposito
    end

    assert_redirected_to tipos_de_depositos_path
  end
end
