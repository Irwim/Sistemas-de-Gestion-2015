require 'test_helper'

class SolicitudesMonitoresTecladosControllerTest < ActionController::TestCase
  setup do
    @solicitudes_monitores_teclado = solicitudes_monitores_teclados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:solicitudes_monitores_teclados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create solicitudes_monitores_teclado" do
    assert_difference('SolicitudesMonitoresTeclado.count') do
      post :create, solicitudes_monitores_teclado: { fecha: @solicitudes_monitores_teclado.fecha, numero_de_formulario: @solicitudes_monitores_teclado.numero_de_formulario }
    end

    assert_redirected_to solicitudes_monitores_teclado_path(assigns(:solicitudes_monitores_teclado))
  end

  test "should show solicitudes_monitores_teclado" do
    get :show, id: @solicitudes_monitores_teclado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @solicitudes_monitores_teclado
    assert_response :success
  end

  test "should update solicitudes_monitores_teclado" do
    patch :update, id: @solicitudes_monitores_teclado, solicitudes_monitores_teclado: { fecha: @solicitudes_monitores_teclado.fecha, numero_de_formulario: @solicitudes_monitores_teclado.numero_de_formulario }
    assert_redirected_to solicitudes_monitores_teclado_path(assigns(:solicitudes_monitores_teclado))
  end

  test "should destroy solicitudes_monitores_teclado" do
    assert_difference('SolicitudesMonitoresTeclado.count', -1) do
      delete :destroy, id: @solicitudes_monitores_teclado
    end

    assert_redirected_to solicitudes_monitores_teclados_path
  end
end
