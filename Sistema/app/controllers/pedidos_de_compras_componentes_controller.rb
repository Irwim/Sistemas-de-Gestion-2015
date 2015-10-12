class PedidosDeComprasComponentesController < ApplicationController
  before_action :set_pedidos_de_compras_componente, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @pedidos_de_compras_componentes = PedidosDeComprasComponente.all
    respond_with(@pedidos_de_compras_componentes)
  end

  def show
    respond_with(@pedidos_de_compras_componente)
  end

  def new
    @pedidos_de_compras_componente = PedidosDeComprasComponente.new
    respond_with(@pedidos_de_compras_componente)
  end

  def edit
  end

  def create
    @pedidos_de_compras_componente = PedidosDeComprasComponente.new(pedidos_de_compras_componente_params)
    @pedidos_de_compras_componente.save
    respond_with(@pedidos_de_compras_componente)
  end

  def update
    @pedidos_de_compras_componente.update(pedidos_de_compras_componente_params)
    respond_with(@pedidos_de_compras_componente)
  end

  def destroy
    @pedidos_de_compras_componente.destroy
    respond_with(@pedidos_de_compras_componente)
  end

  private
    def set_pedidos_de_compras_componente
      @pedidos_de_compras_componente = PedidosDeComprasComponente.find(params[:id])
    end

    def pedidos_de_compras_componente_params
      params.require(:pedidos_de_compras_componente).permit(:fecha, :baja_de_pedido, :estado_de_pedido, :numero_de_formulario)
    end
end
