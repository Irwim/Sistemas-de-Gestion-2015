require 'test_helper'

class StocksComponentesControllerTest < ActionController::TestCase
  setup do
    @stocks_componente = stocks_componentes(:one)
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

  test "should create stocks_componente" do
    assert_difference('StocksComponente.count') do
      post :create, stocks_componente: { cantidad_disponible: @stocks_componente.cantidad_disponible }
    end

    assert_redirected_to stocks_componente_path(assigns(:stocks_componente))
  end

  test "should show stocks_componente" do
    get :show, id: @stocks_componente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stocks_componente
    assert_response :success
  end

  test "should update stocks_componente" do
    patch :update, id: @stocks_componente, stocks_componente: { cantidad_disponible: @stocks_componente.cantidad_disponible }
    assert_redirected_to stocks_componente_path(assigns(:stocks_componente))
  end

  test "should destroy stocks_componente" do
    assert_difference('StocksComponente.count', -1) do
      delete :destroy, id: @stocks_componente
    end

    assert_redirected_to stocks_componentes_path
  end
end
