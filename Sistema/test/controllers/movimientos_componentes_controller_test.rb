require 'test_helper'

class MovimientosComponentesControllerTest < ActionController::TestCase
  setup do
    @movimiento_componente = movimientos_componentes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:movimientos_componentes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create movimiento_componente" do
    assert_difference('MovimientoComponente.count') do
      post :create, movimiento_componente: { cantidad_transferida: @movimiento_componente.cantidad_transferida, componente_id: @movimiento_componente.componente_id, deposito_id: @movimiento_componente.deposito_id, fecha: @movimiento_componente.fecha, tipo_de_movimiento_id: @movimiento_componente.tipo_de_movimiento_id }
    end

    assert_redirected_to movimiento_componente_path(assigns(:movimiento_componente))
  end

  test "should show movimiento_componente" do
    get :show, id: @movimiento_componente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @movimiento_componente
    assert_response :success
  end

  test "should update movimiento_componente" do
    patch :update, id: @movimiento_componente, movimiento_componente: { cantidad_transferida: @movimiento_componente.cantidad_transferida, componente_id: @movimiento_componente.componente_id, deposito_id: @movimiento_componente.deposito_id, fecha: @movimiento_componente.fecha, tipo_de_movimiento_id: @movimiento_componente.tipo_de_movimiento_id }
    assert_redirected_to movimiento_componente_path(assigns(:movimiento_componente))
  end

  test "should destroy movimiento_componente" do
    assert_difference('MovimientoComponente.count', -1) do
      delete :destroy, id: @movimiento_componente
    end

    assert_redirected_to movimientos_componentes_path
  end
end
