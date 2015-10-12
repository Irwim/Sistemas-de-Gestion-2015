require 'test_helper'

class ProductosTerminadosControllerTest < ActionController::TestCase
  setup do
    @productos_terminado = productos_terminados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:productos_terminados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create productos_terminado" do
    assert_difference('ProductosTerminado.count') do
      post :create, productos_terminado: { cantidad_minima: @productos_terminado.cantidad_minima, codigo: @productos_terminado.codigo, descripcion: @productos_terminado.descripcion, nombre: @productos_terminado.nombre }
    end

    assert_redirected_to productos_terminado_path(assigns(:productos_terminado))
  end

  test "should show productos_terminado" do
    get :show, id: @productos_terminado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @productos_terminado
    assert_response :success
  end

  test "should update productos_terminado" do
    patch :update, id: @productos_terminado, productos_terminado: { cantidad_minima: @productos_terminado.cantidad_minima, codigo: @productos_terminado.codigo, descripcion: @productos_terminado.descripcion, nombre: @productos_terminado.nombre }
    assert_redirected_to productos_terminado_path(assigns(:productos_terminado))
  end

  test "should destroy productos_terminado" do
    assert_difference('ProductosTerminado.count', -1) do
      delete :destroy, id: @productos_terminado
    end

    assert_redirected_to productos_terminados_path
  end
end
