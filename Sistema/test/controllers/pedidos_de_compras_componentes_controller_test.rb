require 'test_helper'

class PedidosDeComprasComponentesControllerTest < ActionController::TestCase
  setup do
    @pedido_de_compra_componente = pedidos_de_compras_componentes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pedidos_de_compras_componentes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pedido_de_compra_componente" do
    assert_difference('PedidoDeCompraComponente.count') do
      post :create, pedido_de_compra_componente: { baja: @pedido_de_compra_componente.baja, estado: @pedido_de_compra_componente.estado, fecha: @pedido_de_compra_componente.fecha, nro_formulario: @pedido_de_compra_componente.nro_formulario }
    end

    assert_redirected_to pedido_de_compra_componente_path(assigns(:pedido_de_compra_componente))
  end

  test "should show pedido_de_compra_componente" do
    get :show, id: @pedido_de_compra_componente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pedido_de_compra_componente
    assert_response :success
  end

  test "should update pedido_de_compra_componente" do
    patch :update, id: @pedido_de_compra_componente, pedido_de_compra_componente: { baja: @pedido_de_compra_componente.baja, estado: @pedido_de_compra_componente.estado, fecha: @pedido_de_compra_componente.fecha, nro_formulario: @pedido_de_compra_componente.nro_formulario }
    assert_redirected_to pedido_de_compra_componente_path(assigns(:pedido_de_compra_componente))
  end

  test "should destroy pedido_de_compra_componente" do
    assert_difference('PedidoDeCompraComponente.count', -1) do
      delete :destroy, id: @pedido_de_compra_componente
    end

    assert_redirected_to pedidos_de_compras_componentes_path
  end
end
