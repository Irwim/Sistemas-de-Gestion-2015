class PedidosDeComprasComponentesController < ApplicationController
  before_action :set_pedido_de_compra_componente, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @pedidos_de_compras_componentes = PedidoDeCompraComponente.all
    respond_with(@pedidos_de_compras_componentes)
  end

  def show
    respond_with(@pedido_de_compra_componente)
  end

  def new
    @pedido_de_compra_componente = PedidoDeCompraComponente.new
    respond_with(@pedido_de_compra_componente)
  end

  def edit
  end

  def create
    @pedido_de_compra_componente = PedidoDeCompraComponente.new(pedido_de_compra_componente_params)
    @pedido_de_compra_componente.save
    respond_with(@pedido_de_compra_componente)
  end

  def update
    @pedido_de_compra_componente.update(pedido_de_compra_componente_params)
    respond_with(@pedido_de_compra_componente)
  end

  def destroy
    @pedido_de_compra_componente.destroy
    respond_with(@pedido_de_compra_componente)
  end

  private
    def set_pedido_de_compra_componente
      @pedido_de_compra_componente = PedidoDeCompraComponente.find(params[:id])
    end

    def pedido_de_compra_componente_params
      params.require(:pedido_de_compra_componente).permit(:fecha, :baja, :nro_formulario, :estado)
    end
end
