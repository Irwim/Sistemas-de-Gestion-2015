require 'test_helper'

class OrdenesDeProduccionesDetallesControllerTest < ActionController::TestCase
  setup do
    @ordenes_de_producciones_detalle = ordenes_de_producciones_detalles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ordenes_de_producciones_detalles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ordenes_de_producciones_detalle" do
    assert_difference('OrdenesDeProduccionesDetalle.count') do
      post :create, ordenes_de_producciones_detalle: { cantidad_solicitada: @ordenes_de_producciones_detalle.cantidad_solicitada, cantidad_terminada: @ordenes_de_producciones_detalle.cantidad_terminada }
    end

    assert_redirected_to ordenes_de_producciones_detalle_path(assigns(:ordenes_de_producciones_detalle))
  end

  test "should show ordenes_de_producciones_detalle" do
    get :show, id: @ordenes_de_producciones_detalle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ordenes_de_producciones_detalle
    assert_response :success
  end

  test "should update ordenes_de_producciones_detalle" do
    patch :update, id: @ordenes_de_producciones_detalle, ordenes_de_producciones_detalle: { cantidad_solicitada: @ordenes_de_producciones_detalle.cantidad_solicitada, cantidad_terminada: @ordenes_de_producciones_detalle.cantidad_terminada }
    assert_redirected_to ordenes_de_producciones_detalle_path(assigns(:ordenes_de_producciones_detalle))
  end

  test "should destroy ordenes_de_producciones_detalle" do
    assert_difference('OrdenesDeProduccionesDetalle.count', -1) do
      delete :destroy, id: @ordenes_de_producciones_detalle
    end

    assert_redirected_to ordenes_de_producciones_detalles_path
  end
end
