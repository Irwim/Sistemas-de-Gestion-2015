require 'test_helper'

class StocksProductosTerminadosControllerTest < ActionController::TestCase
  setup do
    @stock_producto_terminado = stocks_productos_terminados(:one)
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

  test "should create stock_producto_terminado" do
    assert_difference('StockProductoTerminado.count') do
      post :create, stock_producto_terminado: { cantidad_disponible: @stock_producto_terminado.cantidad_disponible, deposito_id: @stock_producto_terminado.deposito_id, producto_terminado_id: @stock_producto_terminado.producto_terminado_id }
    end

    assert_redirected_to stock_producto_terminado_path(assigns(:stock_producto_terminado))
  end

  test "should show stock_producto_terminado" do
    get :show, id: @stock_producto_terminado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stock_producto_terminado
    assert_response :success
  end

  test "should update stock_producto_terminado" do
    patch :update, id: @stock_producto_terminado, stock_producto_terminado: { cantidad_disponible: @stock_producto_terminado.cantidad_disponible, deposito_id: @stock_producto_terminado.deposito_id, producto_terminado_id: @stock_producto_terminado.producto_terminado_id }
    assert_redirected_to stock_producto_terminado_path(assigns(:stock_producto_terminado))
  end

  test "should destroy stock_producto_terminado" do
    assert_difference('StockProductoTerminado.count', -1) do
      delete :destroy, id: @stock_producto_terminado
    end

    assert_redirected_to stocks_productos_terminados_path
  end
end
