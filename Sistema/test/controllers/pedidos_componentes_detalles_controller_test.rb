require 'test_helper'

class PedidosComponentesDetallesControllerTest < ActionController::TestCase
  setup do
    @pedido_componente_detalle = pedidos_componentes_detalles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pedidos_componentes_detalles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pedido_componente_detalle" do
    assert_difference('PedidoComponenteDetalle.count') do
      post :create, pedido_componente_detalle: { cantidad_solicitada: @pedido_componente_detalle.cantidad_solicitada, componente_id: @pedido_componente_detalle.componente_id, pedido_de_compra_componente_id: @pedido_componente_detalle.pedido_de_compra_componente_id }
    end

    assert_redirected_to pedido_componente_detalle_path(assigns(:pedido_componente_detalle))
  end

  test "should show pedido_componente_detalle" do
    get :show, id: @pedido_componente_detalle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pedido_componente_detalle
    assert_response :success
  end

  test "should update pedido_componente_detalle" do
    patch :update, id: @pedido_componente_detalle, pedido_componente_detalle: { cantidad_solicitada: @pedido_componente_detalle.cantidad_solicitada, componente_id: @pedido_componente_detalle.componente_id, pedido_de_compra_componente_id: @pedido_componente_detalle.pedido_de_compra_componente_id }
    assert_redirected_to pedido_componente_detalle_path(assigns(:pedido_componente_detalle))
  end

  test "should destroy pedido_componente_detalle" do
    assert_difference('PedidoComponenteDetalle.count', -1) do
      delete :destroy, id: @pedido_componente_detalle
    end

    assert_redirected_to pedidos_componentes_detalles_path
  end
end
