require 'test_helper'

class TrasladoProductosTerminadosControllerTest < ActionController::TestCase
  setup do
    @traslado_productos_terminado = traslado_productos_terminados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:traslado_productos_terminados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create traslado_productos_terminado" do
    assert_difference('TrasladoProductosTerminado.count') do
      post :create, traslado_productos_terminado: { fecha: @traslado_productos_terminado.fecha, numero_de_formulario: @traslado_productos_terminado.numero_de_formulario }
    end

    assert_redirected_to traslado_productos_terminado_path(assigns(:traslado_productos_terminado))
  end

  test "should show traslado_productos_terminado" do
    get :show, id: @traslado_productos_terminado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @traslado_productos_terminado
    assert_response :success
  end

  test "should update traslado_productos_terminado" do
    patch :update, id: @traslado_productos_terminado, traslado_productos_terminado: { fecha: @traslado_productos_terminado.fecha, numero_de_formulario: @traslado_productos_terminado.numero_de_formulario }
    assert_redirected_to traslado_productos_terminado_path(assigns(:traslado_productos_terminado))
  end

  test "should destroy traslado_productos_terminado" do
    assert_difference('TrasladoProductosTerminado.count', -1) do
      delete :destroy, id: @traslado_productos_terminado
    end

    assert_redirected_to traslado_productos_terminados_path
  end
end
