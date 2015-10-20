require 'test_helper'

class CategoriasProductosControllerTest < ActionController::TestCase
  setup do
    @categoria_producto = categorias_productos(:one)
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

  test "should create categoria_producto" do
    assert_difference('CategoriaProducto.count') do
      post :create, categoria_producto: { descripcion: @categoria_producto.descripcion, nombre: @categoria_producto.nombre }
    end

    assert_redirected_to categoria_producto_path(assigns(:categoria_producto))
  end

  test "should show categoria_producto" do
    get :show, id: @categoria_producto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @categoria_producto
    assert_response :success
  end

  test "should update categoria_producto" do
    patch :update, id: @categoria_producto, categoria_producto: { descripcion: @categoria_producto.descripcion, nombre: @categoria_producto.nombre }
    assert_redirected_to categoria_producto_path(assigns(:categoria_producto))
  end

  test "should destroy categoria_producto" do
    assert_difference('CategoriaProducto.count', -1) do
      delete :destroy, id: @categoria_producto
    end

    assert_redirected_to categorias_productos_path
  end
end
