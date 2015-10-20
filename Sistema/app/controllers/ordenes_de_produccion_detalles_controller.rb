class OrdenesDeProduccionDetallesController < ApplicationController
  before_action :set_orden_de_produccion_detalle, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @ordenes_de_produccion_detalles = OrdenDeProduccionDetalle.all
    respond_with(@ordenes_de_produccion_detalles)
  end

  def show
    respond_with(@orden_de_produccion_detalle)
  end

  def new
    @orden_de_produccion_detalle = OrdenDeProduccionDetalle.new
    respond_with(@orden_de_produccion_detalle)
  end

  def edit
  end

  def create
    @orden_de_produccion_detalle = OrdenDeProduccionDetalle.new(orden_de_produccion_detalle_params)
    @orden_de_produccion_detalle.save
    respond_with(@orden_de_produccion_detalle)
  end

  def update
    @orden_de_produccion_detalle.update(orden_de_produccion_detalle_params)
    respond_with(@orden_de_produccion_detalle)
  end

  def destroy
    @orden_de_produccion_detalle.destroy
    respond_with(@orden_de_produccion_detalle)
  end

  private
    def set_orden_de_produccion_detalle
      @orden_de_produccion_detalle = OrdenDeProduccionDetalle.find(params[:id])
    end

    def orden_de_produccion_detalle_params
      params.require(:orden_de_produccion_detalle).permit(:orden_de_produccion_id, :producto_terminado_id, :cantidad_solicitada, :cantidad_terminada)
    end
end
