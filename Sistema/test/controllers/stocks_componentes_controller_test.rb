require 'test_helper'

class StocksComponentesControllerTest < ActionController::TestCase
  setup do
    @stock_componente = stocks_componentes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stocks_componentes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stock_componente" do
    assert_difference('StockComponente.count') do
      post :create, stock_componente: { cantidad_disponible: @stock_componente.cantidad_disponible, componente_id: @stock_componente.componente_id, deposito_id: @stock_componente.deposito_id }
    end

    assert_redirected_to stock_componente_path(assigns(:stock_componente))
  end

  test "should show stock_componente" do
    get :show, id: @stock_componente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stock_componente
    assert_response :success
  end

  test "should update stock_componente" do
    patch :update, id: @stock_componente, stock_componente: { cantidad_disponible: @stock_componente.cantidad_disponible, componente_id: @stock_componente.componente_id, deposito_id: @stock_componente.deposito_id }
    assert_redirected_to stock_componente_path(assigns(:stock_componente))
  end

  test "should destroy stock_componente" do
    assert_difference('StockComponente.count', -1) do
      delete :destroy, id: @stock_componente
    end

    assert_redirected_to stocks_componentes_path
  end
end
