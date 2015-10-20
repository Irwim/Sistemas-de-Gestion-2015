require 'test_helper'

class OrdenesDeProduccionControllerTest < ActionController::TestCase
  setup do
    @orden_de_produccion = ordenes_de_produccion(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ordenes_de_produccion)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create orden_de_produccion" do
    assert_difference('OrdenDeProduccion.count') do
      post :create, orden_de_produccion: { fecha: @orden_de_produccion.fecha, nro_formulario: @orden_de_produccion.nro_formulario }
    end

    assert_redirected_to orden_de_produccion_path(assigns(:orden_de_produccion))
  end

  test "should show orden_de_produccion" do
    get :show, id: @orden_de_produccion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @orden_de_produccion
    assert_response :success
  end

  test "should update orden_de_produccion" do
    patch :update, id: @orden_de_produccion, orden_de_produccion: { fecha: @orden_de_produccion.fecha, nro_formulario: @orden_de_produccion.nro_formulario }
    assert_redirected_to orden_de_produccion_path(assigns(:orden_de_produccion))
  end

  test "should destroy orden_de_produccion" do
    assert_difference('OrdenDeProduccion.count', -1) do
      delete :destroy, id: @orden_de_produccion
    end

    assert_redirected_to ordenes_de_produccion_path
  end
end
