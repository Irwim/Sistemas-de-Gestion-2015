require 'test_helper'

class MovimientosProductosControllerTest < ActionController::TestCase
  setup do
    @movimiento_producto = movimientos_productos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:movimientos_productos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create movimiento_producto" do
    assert_difference('MovimientoProducto.count') do
      post :create, movimiento_producto: { cantidad_transferida: @movimiento_producto.cantidad_transferida, deposito_id: @movimiento_producto.deposito_id, fecha: @movimiento_producto.fecha, producto_terminado_id: @movimiento_producto.producto_terminado_id, tipo_de_movimiento_id: @movimiento_producto.tipo_de_movimiento_id }
    end

    assert_redirected_to movimiento_producto_path(assigns(:movimiento_producto))
  end

  test "should show movimiento_producto" do
    get :show, id: @movimiento_producto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @movimiento_producto
    assert_response :success
  end

  test "should update movimiento_producto" do
    patch :update, id: @movimiento_producto, movimiento_producto: { cantidad_transferida: @movimiento_producto.cantidad_transferida, deposito_id: @movimiento_producto.deposito_id, fecha: @movimiento_producto.fecha, producto_terminado_id: @movimiento_producto.producto_terminado_id, tipo_de_movimiento_id: @movimiento_producto.tipo_de_movimiento_id }
    assert_redirected_to movimiento_producto_path(assigns(:movimiento_producto))
  end

  test "should destroy movimiento_producto" do
    assert_difference('MovimientoProducto.count', -1) do
      delete :destroy, id: @movimiento_producto
    end

    assert_redirected_to movimientos_productos_path
  end
end
