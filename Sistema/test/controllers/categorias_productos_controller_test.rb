require 'test_helper'

class CategoriasProductosControllerTest < ActionController::TestCase
  setup do
    @categorias_producto = categorias_productos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:categorias_productos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create categorias_producto" do
    assert_difference('CategoriasProducto.count') do
      post :create, categorias_producto: { descripcion: @categorias_producto.descripcion, nombre: @categorias_producto.nombre }
    end

    assert_redirected_to categorias_producto_path(assigns(:categorias_producto))
  end

  test "should show categorias_producto" do
    get :show, id: @categorias_producto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @categorias_producto
    assert_response :success
  end

  test "should update categorias_producto" do
    patch :update, id: @categorias_producto, categorias_producto: { descripcion: @categorias_producto.descripcion, nombre: @categorias_producto.nombre }
    assert_redirected_to categorias_producto_path(assigns(:categorias_producto))
  end

  test "should destroy categorias_producto" do
    assert_difference('CategoriasProducto.count', -1) do
      delete :destroy, id: @categorias_producto
    end

    assert_redirected_to categorias_productos_path
  end
end
