require 'test_helper'

class SolicitudesDetallesControllerTest < ActionController::TestCase
  setup do
    @solicitud_detalle = solicitudes_detalles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:solicitudes_detalles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create solicitud_detalle" do
    assert_difference('SolicitudDetalle.count') do
      post :create, solicitud_detalle: { cantidad_entregada: @solicitud_detalle.cantidad_entregada, cantidad_solicitada: @solicitud_detalle.cantidad_solicitada, componente_id: @solicitud_detalle.componente_id, solicitud_monitor_teclado_id: @solicitud_detalle.solicitud_monitor_teclado_id }
    end

    assert_redirected_to solicitud_detalle_path(assigns(:solicitud_detalle))
  end

  test "should show solicitud_detalle" do
    get :show, id: @solicitud_detalle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @solicitud_detalle
    assert_response :success
  end

  test "should update solicitud_detalle" do
    patch :update, id: @solicitud_detalle, solicitud_detalle: { cantidad_entregada: @solicitud_detalle.cantidad_entregada, cantidad_solicitada: @solicitud_detalle.cantidad_solicitada, componente_id: @solicitud_detalle.componente_id, solicitud_monitor_teclado_id: @solicitud_detalle.solicitud_monitor_teclado_id }
    assert_redirected_to solicitud_detalle_path(assigns(:solicitud_detalle))
  end

  test "should destroy solicitud_detalle" do
    assert_difference('SolicitudDetalle.count', -1) do
      delete :destroy, id: @solicitud_detalle
    end

    assert_redirected_to solicitudes_detalles_path
  end
end
