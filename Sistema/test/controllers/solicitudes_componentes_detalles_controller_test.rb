require 'test_helper'

class SolicitudesComponentesDetallesControllerTest < ActionController::TestCase
  setup do
    @solicitudes_componentes_detalle = solicitudes_componentes_detalles(:one)
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

  test "should create solicitudes_componentes_detalle" do
    assert_difference('SolicitudesComponentesDetalle.count') do
      post :create, solicitudes_componentes_detalle: { cantidad_entregada: @solicitudes_componentes_detalle.cantidad_entregada, cantidad_solicitada: @solicitudes_componentes_detalle.cantidad_solicitada }
    end

    assert_redirected_to solicitudes_componentes_detalle_path(assigns(:solicitudes_componentes_detalle))
  end

  test "should show solicitudes_componentes_detalle" do
    get :show, id: @solicitudes_componentes_detalle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @solicitudes_componentes_detalle
    assert_response :success
  end

  test "should update solicitudes_componentes_detalle" do
    patch :update, id: @solicitudes_componentes_detalle, solicitudes_componentes_detalle: { cantidad_entregada: @solicitudes_componentes_detalle.cantidad_entregada, cantidad_solicitada: @solicitudes_componentes_detalle.cantidad_solicitada }
    assert_redirected_to solicitudes_componentes_detalle_path(assigns(:solicitudes_componentes_detalle))
  end

  test "should destroy solicitudes_componentes_detalle" do
    assert_difference('SolicitudesComponentesDetalle.count', -1) do
      delete :destroy, id: @solicitudes_componentes_detalle
    end

    assert_redirected_to solicitudes_componentes_detalles_path
  end
end
