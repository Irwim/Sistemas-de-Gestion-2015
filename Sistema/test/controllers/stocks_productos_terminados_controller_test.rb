require 'test_helper'

class StocksProductosTerminadosControllerTest < ActionController::TestCase
  setup do
    @stocks_productos_terminado = stocks_productos_terminados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stocks_productos_terminados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stocks_productos_terminado" do
    assert_difference('StocksProductosTerminado.count') do
      post :create, stocks_productos_terminado: { cantidad_disponible: @stocks_productos_terminado.cantidad_disponible }
    end

    assert_redirected_to stocks_productos_terminado_path(assigns(:stocks_productos_terminado))
  end

  test "should show stocks_productos_terminado" do
    get :show, id: @stocks_productos_terminado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stocks_productos_terminado
    assert_response :success
  end

  test "should update stocks_productos_terminado" do
    patch :update, id: @stocks_productos_terminado, stocks_productos_terminado: { cantidad_disponible: @stocks_productos_terminado.cantidad_disponible }
    assert_redirected_to stocks_productos_terminado_path(assigns(:stocks_productos_terminado))
  end

  test "should destroy stocks_productos_terminado" do
    assert_difference('StocksProductosTerminado.count', -1) do
      delete :destroy, id: @stocks_productos_terminado
    end

    assert_redirected_to stocks_productos_terminados_path
  end
end
