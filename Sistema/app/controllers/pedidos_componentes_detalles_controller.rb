class PedidosComponentesDetallesController < ApplicationController
  before_action :set_pedido_componente_detalle, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @pedidos_componentes_detalles = PedidoComponenteDetalle.all
    respond_with(@pedidos_componentes_detalles)
  end

  def show
    respond_with(@pedido_componente_detalle)
  end

  def new
    @pedido_componente_detalle = PedidoComponenteDetalle.new
    respond_with(@pedido_componente_detalle)
  end

  def edit
  end

  def create
    @pedido_componente_detalle = PedidoComponenteDetalle.new(pedido_componente_detalle_params)
    @pedido_componente_detalle.save
    respond_with(@pedido_componente_detalle)
  end

  def update
    @pedido_componente_detalle.update(pedido_componente_detalle_params)
    respond_with(@pedido_componente_detalle)
  end

  def destroy
    @pedido_componente_detalle.destroy
    respond_with(@pedido_componente_detalle)
  end

  private
    def set_pedido_componente_detalle
      @pedido_componente_detalle = PedidoComponenteDetalle.find(params[:id])
    end

    def pedido_componente_detalle_params
      params.require(:pedido_componente_detalle).permit(:pedido_de_compra_componente_id, :componente_id, :cantidad_solicitada)
    end
end
