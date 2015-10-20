require 'test_helper'

class OrdenesDeProduccionDetallesControllerTest < ActionController::TestCase
  setup do
    @orden_de_produccion_detalle = ordenes_de_produccion_detalles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ordenes_de_produccion_detalles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create orden_de_produccion_detalle" do
    assert_difference('OrdenDeProduccionDetalle.count') do
      post :create, orden_de_produccion_detalle: { cantidad_solicitada: @orden_de_produccion_detalle.cantidad_solicitada, cantidad_terminada: @orden_de_produccion_detalle.cantidad_terminada, orden_de_produccion_id: @orden_de_produccion_detalle.orden_de_produccion_id, producto_terminado_id: @orden_de_produccion_detalle.producto_terminado_id }
    end

    assert_redirected_to orden_de_produccion_detalle_path(assigns(:orden_de_produccion_detalle))
  end

  test "should show orden_de_produccion_detalle" do
    get :show, id: @orden_de_produccion_detalle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @orden_de_produccion_detalle
    assert_response :success
  end

  test "should update orden_de_produccion_detalle" do
    patch :update, id: @orden_de_produccion_detalle, orden_de_produccion_detalle: { cantidad_solicitada: @orden_de_produccion_detalle.cantidad_solicitada, cantidad_terminada: @orden_de_produccion_detalle.cantidad_terminada, orden_de_produccion_id: @orden_de_produccion_detalle.orden_de_produccion_id, producto_terminado_id: @orden_de_produccion_detalle.producto_terminado_id }
    assert_redirected_to orden_de_produccion_detalle_path(assigns(:orden_de_produccion_detalle))
  end

  test "should destroy orden_de_produccion_detalle" do
    assert_difference('OrdenDeProduccionDetalle.count', -1) do
      delete :destroy, id: @orden_de_produccion_detalle
    end

    assert_redirected_to ordenes_de_produccion_detalles_path
  end
end
