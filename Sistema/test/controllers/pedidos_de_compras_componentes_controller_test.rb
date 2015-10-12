require 'test_helper'

class PedidosDeComprasComponentesControllerTest < ActionController::TestCase
  setup do
    @pedidos_de_compras_componente = pedidos_de_compras_componentes(:one)
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

  test "should create pedidos_de_compras_componente" do
    assert_difference('PedidosDeComprasComponente.count') do
      post :create, pedidos_de_compras_componente: { baja_de_pedido: @pedidos_de_compras_componente.baja_de_pedido, estado_de_pedido: @pedidos_de_compras_componente.estado_de_pedido, fecha: @pedidos_de_compras_componente.fecha, numero_de_formulario: @pedidos_de_compras_componente.numero_de_formulario }
    end

    assert_redirected_to pedidos_de_compras_componente_path(assigns(:pedidos_de_compras_componente))
  end

  test "should show pedidos_de_compras_componente" do
    get :show, id: @pedidos_de_compras_componente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pedidos_de_compras_componente
    assert_response :success
  end

  test "should update pedidos_de_compras_componente" do
    patch :update, id: @pedidos_de_compras_componente, pedidos_de_compras_componente: { baja_de_pedido: @pedidos_de_compras_componente.baja_de_pedido, estado_de_pedido: @pedidos_de_compras_componente.estado_de_pedido, fecha: @pedidos_de_compras_componente.fecha, numero_de_formulario: @pedidos_de_compras_componente.numero_de_formulario }
    assert_redirected_to pedidos_de_compras_componente_path(assigns(:pedidos_de_compras_componente))
  end

  test "should destroy pedidos_de_compras_componente" do
    assert_difference('PedidosDeComprasComponente.count', -1) do
      delete :destroy, id: @pedidos_de_compras_componente
    end

    assert_redirected_to pedidos_de_compras_componentes_path
  end
end
