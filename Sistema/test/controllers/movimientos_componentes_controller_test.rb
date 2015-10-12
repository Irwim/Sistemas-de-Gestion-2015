require 'test_helper'

class MovimientosComponentesControllerTest < ActionController::TestCase
  setup do
    @movimientos_componente = movimientos_componentes(:one)
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

  test "should create movimientos_componente" do
    assert_difference('MovimientosComponente.count') do
      post :create, movimientos_componente: { cantidad_transferida: @movimientos_componente.cantidad_transferida, fecha: @movimientos_componente.fecha }
    end

    assert_redirected_to movimientos_componente_path(assigns(:movimientos_componente))
  end

  test "should show movimientos_componente" do
    get :show, id: @movimientos_componente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @movimientos_componente
    assert_response :success
  end

  test "should update movimientos_componente" do
    patch :update, id: @movimientos_componente, movimientos_componente: { cantidad_transferida: @movimientos_componente.cantidad_transferida, fecha: @movimientos_componente.fecha }
    assert_redirected_to movimientos_componente_path(assigns(:movimientos_componente))
  end

  test "should destroy movimientos_componente" do
    assert_difference('MovimientosComponente.count', -1) do
      delete :destroy, id: @movimientos_componente
    end

    assert_redirected_to movimientos_componentes_path
  end
end
