class PedidosDeComprasDeComponentesDetallesController < ApplicationController
  before_action :set_pedidos_de_compras_de_componentes_detalle, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @pedidos_de_compras_de_componentes_detalles = PedidosDeComprasDeComponentesDetalle.all
    respond_with(@pedidos_de_compras_de_componentes_detalles)
  end

  def show
    respond_with(@pedidos_de_compras_de_componentes_detalle)
  end

  def new
    @pedidos_de_compras_de_componentes_detalle = PedidosDeComprasDeComponentesDetalle.new
    respond_with(@pedidos_de_compras_de_componentes_detalle)
  end

  def edit
  end

  def create
    @pedidos_de_compras_de_componentes_detalle = PedidosDeComprasDeComponentesDetalle.new(pedidos_de_compras_de_componentes_detalle_params)
    @pedidos_de_compras_de_componentes_detalle.save
    respond_with(@pedidos_de_compras_de_componentes_detalle)
  end

  def update
    @pedidos_de_compras_de_componentes_detalle.update(pedidos_de_compras_de_componentes_detalle_params)
    respond_with(@pedidos_de_compras_de_componentes_detalle)
  end

  def destroy
    @pedidos_de_compras_de_componentes_detalle.destroy
    respond_with(@pedidos_de_compras_de_componentes_detalle)
  end

  private
    def set_pedidos_de_compras_de_componentes_detalle
      @pedidos_de_compras_de_componentes_detalle = PedidosDeComprasDeComponentesDetalle.find(params[:id])
    end

    def pedidos_de_compras_de_componentes_detalle_params
      params.require(:pedidos_de_compras_de_componentes_detalle).permit(:cantidad_solicitada)
    end
end
