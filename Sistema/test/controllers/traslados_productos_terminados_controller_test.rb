require 'test_helper'

class TrasladosProductosTerminadosControllerTest < ActionController::TestCase
  setup do
    @traslado_producto_terminado = traslados_productos_terminados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:traslados_productos_terminados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create traslado_producto_terminado" do
    assert_difference('TrasladoProductoTerminado.count') do
      post :create, traslado_producto_terminado: { deposito_id: @traslado_producto_terminado.deposito_id, deposito_id: @traslado_producto_terminado.deposito_id, fecha: @traslado_producto_terminado.fecha, nro_formulario: @traslado_producto_terminado.nro_formulario, orden_de_produccion_id: @traslado_producto_terminado.orden_de_produccion_id }
    end

    assert_redirected_to traslado_producto_terminado_path(assigns(:traslado_producto_terminado))
  end

  test "should show traslado_producto_terminado" do
    get :show, id: @traslado_producto_terminado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @traslado_producto_terminado
    assert_response :success
  end

  test "should update traslado_producto_terminado" do
    patch :update, id: @traslado_producto_terminado, traslado_producto_terminado: { deposito_id: @traslado_producto_terminado.deposito_id, deposito_id: @traslado_producto_terminado.deposito_id, fecha: @traslado_producto_terminado.fecha, nro_formulario: @traslado_producto_terminado.nro_formulario, orden_de_produccion_id: @traslado_producto_terminado.orden_de_produccion_id }
    assert_redirected_to traslado_producto_terminado_path(assigns(:traslado_producto_terminado))
  end

  test "should destroy traslado_producto_terminado" do
    assert_difference('TrasladoProductoTerminado.count', -1) do
      delete :destroy, id: @traslado_producto_terminado
    end

    assert_redirected_to traslados_productos_terminados_path
  end
end
