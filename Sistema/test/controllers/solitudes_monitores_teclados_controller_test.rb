require 'test_helper'

class SolitudesMonitoresTecladosControllerTest < ActionController::TestCase
  setup do
    @solicitud_monitor_teclado = solitudes_monitores_teclados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:solitudes_monitores_teclados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create solicitud_monitor_teclado" do
    assert_difference('SolicitudMonitorTeclado.count') do
      post :create, solicitud_monitor_teclado: { deposito_id: @solicitud_monitor_teclado.deposito_id, deposito_id: @solicitud_monitor_teclado.deposito_id, fecha: @solicitud_monitor_teclado.fecha, nro_formulario: @solicitud_monitor_teclado.nro_formulario }
    end

    assert_redirected_to solicitud_monitor_teclado_path(assigns(:solicitud_monitor_teclado))
  end

  test "should show solicitud_monitor_teclado" do
    get :show, id: @solicitud_monitor_teclado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @solicitud_monitor_teclado
    assert_response :success
  end

  test "should update solicitud_monitor_teclado" do
    patch :update, id: @solicitud_monitor_teclado, solicitud_monitor_teclado: { deposito_id: @solicitud_monitor_teclado.deposito_id, deposito_id: @solicitud_monitor_teclado.deposito_id, fecha: @solicitud_monitor_teclado.fecha, nro_formulario: @solicitud_monitor_teclado.nro_formulario }
    assert_redirected_to solicitud_monitor_teclado_path(assigns(:solicitud_monitor_teclado))
  end

  test "should destroy solicitud_monitor_teclado" do
    assert_difference('SolicitudMonitorTeclado.count', -1) do
      delete :destroy, id: @solicitud_monitor_teclado
    end

    assert_redirected_to solitudes_monitores_teclados_path
  end
end
