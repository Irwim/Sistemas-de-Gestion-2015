require 'test_helper'

class SolicitudesComponentesDetallesControllerTest < ActionController::TestCase
  setup do
    @solicitud_componente_detalle = solicitudes_componentes_detalles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:solicitudes_componentes_detalles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create solicitud_componente_detalle" do
    assert_difference('SolicitudComponenteDetalle.count') do
      post :create, solicitud_componente_detalle: { cantidad_entregada: @solicitud_componente_detalle.cantidad_entregada, cantidad_solicitada: @solicitud_componente_detalle.cantidad_solicitada, componente_id: @solicitud_componente_detalle.componente_id, solicitud_componente_id: @solicitud_componente_detalle.solicitud_componente_id }
    end

    assert_redirected_to solicitud_componente_detalle_path(assigns(:solicitud_componente_detalle))
  end

  test "should show solicitud_componente_detalle" do
    get :show, id: @solicitud_componente_detalle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @solicitud_componente_detalle
    assert_response :success
  end

  test "should update solicitud_componente_detalle" do
    patch :update, id: @solicitud_componente_detalle, solicitud_componente_detalle: { cantidad_entregada: @solicitud_componente_detalle.cantidad_entregada, cantidad_solicitada: @solicitud_componente_detalle.cantidad_solicitada, componente_id: @solicitud_componente_detalle.componente_id, solicitud_componente_id: @solicitud_componente_detalle.solicitud_componente_id }
    assert_redirected_to solicitud_componente_detalle_path(assigns(:solicitud_componente_detalle))
  end

  test "should destroy solicitud_componente_detalle" do
    assert_difference('SolicitudComponenteDetalle.count', -1) do
      delete :destroy, id: @solicitud_componente_detalle
    end

    assert_redirected_to solicitudes_componentes_detalles_path
  end
end
