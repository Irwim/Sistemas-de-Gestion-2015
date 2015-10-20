require 'test_helper'

class SolicitudesComponentesControllerTest < ActionController::TestCase
  setup do
    @solicitud_componente = solicitudes_componentes(:one)
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

  test "should create solicitud_componente" do
    assert_difference('SolicitudComponente.count') do
      post :create, solicitud_componente: { deposito_id: @solicitud_componente.deposito_id, deposito_id: @solicitud_componente.deposito_id, estado: @solicitud_componente.estado, fecha: @solicitud_componente.fecha, fecha_baja: @solicitud_componente.fecha_baja, nro_formulario: @solicitud_componente.nro_formulario }
    end

    assert_redirected_to solicitud_componente_path(assigns(:solicitud_componente))
  end

  test "should show solicitud_componente" do
    get :show, id: @solicitud_componente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @solicitud_componente
    assert_response :success
  end

  test "should update solicitud_componente" do
    patch :update, id: @solicitud_componente, solicitud_componente: { deposito_id: @solicitud_componente.deposito_id, deposito_id: @solicitud_componente.deposito_id, estado: @solicitud_componente.estado, fecha: @solicitud_componente.fecha, fecha_baja: @solicitud_componente.fecha_baja, nro_formulario: @solicitud_componente.nro_formulario }
    assert_redirected_to solicitud_componente_path(assigns(:solicitud_componente))
  end

  test "should destroy solicitud_componente" do
    assert_difference('SolicitudComponente.count', -1) do
      delete :destroy, id: @solicitud_componente
    end

    assert_redirected_to solicitudes_componentes_path
  end
end
