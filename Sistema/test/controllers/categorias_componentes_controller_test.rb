require 'test_helper'

class CategoriasComponentesControllerTest < ActionController::TestCase
  setup do
    @categorias_componente = categorias_componentes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:categorias_componentes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create categorias_componente" do
    assert_difference('CategoriasComponente.count') do
      post :create, categorias_componente: { descripcion: @categorias_componente.descripcion, nombre: @categorias_componente.nombre }
    end

    assert_redirected_to categorias_componente_path(assigns(:categorias_componente))
  end

  test "should show categorias_componente" do
    get :show, id: @categorias_componente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @categorias_componente
    assert_response :success
  end

  test "should update categorias_componente" do
    patch :update, id: @categorias_componente, categorias_componente: { descripcion: @categorias_componente.descripcion, nombre: @categorias_componente.nombre }
    assert_redirected_to categorias_componente_path(assigns(:categorias_componente))
  end

  test "should destroy categorias_componente" do
    assert_difference('CategoriasComponente.count', -1) do
      delete :destroy, id: @categorias_componente
    end

    assert_redirected_to categorias_componentes_path
  end
end
