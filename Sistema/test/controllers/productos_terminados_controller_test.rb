require 'test_helper'

class ProductosTerminadosControllerTest < ActionController::TestCase
  setup do
    @producto_terminado = productos_terminados(:one)
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

  test "should create producto_terminado" do
    assert_difference('ProductoTerminado.count') do
      post :create, producto_terminado: { cantidad_minima: @producto_terminado.cantidad_minima, categoria_producto_id: @producto_terminado.categoria_producto_id, codigo: @producto_terminado.codigo, descripcion: @producto_terminado.descripcion, modelo_id: @producto_terminado.modelo_id }
    end

    assert_redirected_to producto_terminado_path(assigns(:producto_terminado))
  end

  test "should show producto_terminado" do
    get :show, id: @producto_terminado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @producto_terminado
    assert_response :success
  end

  test "should update producto_terminado" do
    patch :update, id: @producto_terminado, producto_terminado: { cantidad_minima: @producto_terminado.cantidad_minima, categoria_producto_id: @producto_terminado.categoria_producto_id, codigo: @producto_terminado.codigo, descripcion: @producto_terminado.descripcion, modelo_id: @producto_terminado.modelo_id }
    assert_redirected_to producto_terminado_path(assigns(:producto_terminado))
  end

  test "should destroy producto_terminado" do
    assert_difference('ProductoTerminado.count', -1) do
      delete :destroy, id: @producto_terminado
    end

    assert_redirected_to productos_terminados_path
  end
end
