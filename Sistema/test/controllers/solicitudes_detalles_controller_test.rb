require 'test_helper'

class SolicitudesDetallesControllerTest < ActionController::TestCase
  setup do
    @solicitudes_detalle = solicitudes_detalles(:one)
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

  test "should create solicitudes_detalle" do
    assert_difference('SolicitudesDetalle.count') do
      post :create, solicitudes_detalle: { cantidad_entregada: @solicitudes_detalle.cantidad_entregada, cantidad_solicitada: @solicitudes_detalle.cantidad_solicitada }
    end

    assert_redirected_to solicitudes_detalle_path(assigns(:solicitudes_detalle))
  end

  test "should show solicitudes_detalle" do
    get :show, id: @solicitudes_detalle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @solicitudes_detalle
    assert_response :success
  end

  test "should update solicitudes_detalle" do
    patch :update, id: @solicitudes_detalle, solicitudes_detalle: { cantidad_entregada: @solicitudes_detalle.cantidad_entregada, cantidad_solicitada: @solicitudes_detalle.cantidad_solicitada }
    assert_redirected_to solicitudes_detalle_path(assigns(:solicitudes_detalle))
  end

  test "should destroy solicitudes_detalle" do
    assert_difference('SolicitudesDetalle.count', -1) do
      delete :destroy, id: @solicitudes_detalle
    end

    assert_redirected_to solicitudes_detalles_path
  end
end
