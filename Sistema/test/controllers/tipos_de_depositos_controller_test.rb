require 'test_helper'

class TiposDeDepositosControllerTest < ActionController::TestCase
  setup do
    @tipo_de_deposito = tipos_de_depositos(:one)
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

  test "should create tipo_de_deposito" do
    assert_difference('TipoDeDeposito.count') do
      post :create, tipo_de_deposito: { nombre: @tipo_de_deposito.nombre }
    end

    assert_redirected_to tipo_de_deposito_path(assigns(:tipo_de_deposito))
  end

  test "should show tipo_de_deposito" do
    get :show, id: @tipo_de_deposito
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_de_deposito
    assert_response :success
  end

  test "should update tipo_de_deposito" do
    patch :update, id: @tipo_de_deposito, tipo_de_deposito: { nombre: @tipo_de_deposito.nombre }
    assert_redirected_to tipo_de_deposito_path(assigns(:tipo_de_deposito))
  end

  test "should destroy tipo_de_deposito" do
    assert_difference('TipoDeDeposito.count', -1) do
      delete :destroy, id: @tipo_de_deposito
    end

    assert_redirected_to tipos_de_depositos_path
  end
end
