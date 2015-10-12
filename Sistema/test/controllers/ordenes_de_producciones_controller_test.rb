require 'test_helper'

class OrdenesDeProduccionesControllerTest < ActionController::TestCase
  setup do
    @ordenes_de_produccione = ordenes_de_producciones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ordenes_de_producciones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ordenes_de_produccione" do
    assert_difference('OrdenesDeProduccione.count') do
      post :create, ordenes_de_produccione: { fecha: @ordenes_de_produccione.fecha, numero_de_formulario: @ordenes_de_produccione.numero_de_formulario }
    end

    assert_redirected_to ordenes_de_produccione_path(assigns(:ordenes_de_produccione))
  end

  test "should show ordenes_de_produccione" do
    get :show, id: @ordenes_de_produccione
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ordenes_de_produccione
    assert_response :success
  end

  test "should update ordenes_de_produccione" do
    patch :update, id: @ordenes_de_produccione, ordenes_de_produccione: { fecha: @ordenes_de_produccione.fecha, numero_de_formulario: @ordenes_de_produccione.numero_de_formulario }
    assert_redirected_to ordenes_de_produccione_path(assigns(:ordenes_de_produccione))
  end

  test "should destroy ordenes_de_produccione" do
    assert_difference('OrdenesDeProduccione.count', -1) do
      delete :destroy, id: @ordenes_de_produccione
    end

    assert_redirected_to ordenes_de_producciones_path
  end
end
