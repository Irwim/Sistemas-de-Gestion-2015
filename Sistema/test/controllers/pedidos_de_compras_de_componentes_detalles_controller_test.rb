require 'test_helper'

class PedidosDeComprasDeComponentesDetallesControllerTest < ActionController::TestCase
  setup do
    @pedidos_de_compras_de_componentes_detalle = pedidos_de_compras_de_componentes_detalles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pedidos_de_compras_de_componentes_detalles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pedidos_de_compras_de_componentes_detalle" do
    assert_difference('PedidosDeComprasDeComponentesDetalle.count') do
      post :create, pedidos_de_compras_de_componentes_detalle: { cantidad_solicitada: @pedidos_de_compras_de_componentes_detalle.cantidad_solicitada }
    end

    assert_redirected_to pedidos_de_compras_de_componentes_detalle_path(assigns(:pedidos_de_compras_de_componentes_detalle))
  end

  test "should show pedidos_de_compras_de_componentes_detalle" do
    get :show, id: @pedidos_de_compras_de_componentes_detalle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pedidos_de_compras_de_componentes_detalle
    assert_response :success
  end

  test "should update pedidos_de_compras_de_componentes_detalle" do
    patch :update, id: @pedidos_de_compras_de_componentes_detalle, pedidos_de_compras_de_componentes_detalle: { cantidad_solicitada: @pedidos_de_compras_de_componentes_detalle.cantidad_solicitada }
    assert_redirected_to pedidos_de_compras_de_componentes_detalle_path(assigns(:pedidos_de_compras_de_componentes_detalle))
  end

  test "should destroy pedidos_de_compras_de_componentes_detalle" do
    assert_difference('PedidosDeComprasDeComponentesDetalle.count', -1) do
      delete :destroy, id: @pedidos_de_compras_de_componentes_detalle
    end

    assert_redirected_to pedidos_de_compras_de_componentes_detalles_path
  end
end
