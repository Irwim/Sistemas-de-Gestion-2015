require 'test_helper'

class MovimientosProductosControllerTest < ActionController::TestCase
  setup do
    @movimientos_producto = movimientos_productos(:one)
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

  test "should create movimientos_producto" do
    assert_difference('MovimientosProducto.count') do
      post :create, movimientos_producto: { cantidad_transferida: @movimientos_producto.cantidad_transferida, fecha: @movimientos_producto.fecha }
    end

    assert_redirected_to movimientos_producto_path(assigns(:movimientos_producto))
  end

  test "should show movimientos_producto" do
    get :show, id: @movimientos_producto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @movimientos_producto
    assert_response :success
  end

  test "should update movimientos_producto" do
    patch :update, id: @movimientos_producto, movimientos_producto: { cantidad_transferida: @movimientos_producto.cantidad_transferida, fecha: @movimientos_producto.fecha }
    assert_redirected_to movimientos_producto_path(assigns(:movimientos_producto))
  end

  test "should destroy movimientos_producto" do
    assert_difference('MovimientosProducto.count', -1) do
      delete :destroy, id: @movimientos_producto
    end

    assert_redirected_to movimientos_productos_path
  end
end
