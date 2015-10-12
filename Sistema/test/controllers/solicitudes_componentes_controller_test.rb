require 'test_helper'

class SolicitudesComponentesControllerTest < ActionController::TestCase
  setup do
    @solicitudes_componente = solicitudes_componentes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:solicitudes_componentes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create solicitudes_componente" do
    assert_difference('SolicitudesComponente.count') do
      post :create, solicitudes_componente: { baja_de_solicitud: @solicitudes_componente.baja_de_solicitud, estado_de_solicitud: @solicitudes_componente.estado_de_solicitud, fecha: @solicitudes_componente.fecha, numero_de_formulario: @solicitudes_componente.numero_de_formulario }
    end

    assert_redirected_to solicitudes_componente_path(assigns(:solicitudes_componente))
  end

  test "should show solicitudes_componente" do
    get :show, id: @solicitudes_componente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @solicitudes_componente
    assert_response :success
  end

  test "should update solicitudes_componente" do
    patch :update, id: @solicitudes_componente, solicitudes_componente: { baja_de_solicitud: @solicitudes_componente.baja_de_solicitud, estado_de_solicitud: @solicitudes_componente.estado_de_solicitud, fecha: @solicitudes_componente.fecha, numero_de_formulario: @solicitudes_componente.numero_de_formulario }
    assert_redirected_to solicitudes_componente_path(assigns(:solicitudes_componente))
  end

  test "should destroy solicitudes_componente" do
    assert_difference('SolicitudesComponente.count', -1) do
      delete :destroy, id: @solicitudes_componente
    end

    assert_redirected_to solicitudes_componentes_path
  end
end
