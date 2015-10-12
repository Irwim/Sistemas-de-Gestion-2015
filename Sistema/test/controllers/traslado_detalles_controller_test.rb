require 'test_helper'

class TrasladoDetallesControllerTest < ActionController::TestCase
  setup do
    @traslado_detalle = traslado_detalles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:traslado_detalles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create traslado_detalle" do
    assert_difference('TrasladoDetalle.count') do
      post :create, traslado_detalle: { cantidad_terminada: @traslado_detalle.cantidad_terminada }
    end

    assert_redirected_to traslado_detalle_path(assigns(:traslado_detalle))
  end

  test "should show traslado_detalle" do
    get :show, id: @traslado_detalle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @traslado_detalle
    assert_response :success
  end

  test "should update traslado_detalle" do
    patch :update, id: @traslado_detalle, traslado_detalle: { cantidad_terminada: @traslado_detalle.cantidad_terminada }
    assert_redirected_to traslado_detalle_path(assigns(:traslado_detalle))
  end

  test "should destroy traslado_detalle" do
    assert_difference('TrasladoDetalle.count', -1) do
      delete :destroy, id: @traslado_detalle
    end

    assert_redirected_to traslado_detalles_path
  end
end
