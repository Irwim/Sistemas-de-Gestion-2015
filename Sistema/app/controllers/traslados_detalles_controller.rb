class TrasladosDetallesController < ApplicationController
  before_action :set_traslado_detalle, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @traslados_detalles = TrasladoDetalle.all
    respond_with(@traslados_detalles)
  end

  def show
    respond_with(@traslado_detalle)
  end

  def new
    @traslado_detalle = TrasladoDetalle.new
    respond_with(@traslado_detalle)
  end

  def edit
  end

  def create
    @traslado_detalle = TrasladoDetalle.new(traslado_detalle_params)
    @traslado_detalle.save
    respond_with(@traslado_detalle)
  end

  def update
    @traslado_detalle.update(traslado_detalle_params)
    respond_with(@traslado_detalle)
  end

  def destroy
    @traslado_detalle.destroy
    respond_with(@traslado_detalle)
  end

  private
    def set_traslado_detalle
      @traslado_detalle = TrasladoDetalle.find(params[:id])
    end

    def traslado_detalle_params
      params.require(:traslado_detalle).permit(:traslado_producto_terminado_id, :producto_terminado_id, :cantidad_a_transferir)
    end
end
