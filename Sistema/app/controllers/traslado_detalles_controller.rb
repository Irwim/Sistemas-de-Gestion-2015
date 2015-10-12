class TrasladoDetallesController < ApplicationController
  before_action :set_traslado_detalle, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @traslado_detalles = TrasladoDetalle.all
    respond_with(@traslado_detalles)
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
      params.require(:traslado_detalle).permit(:cantidad_terminada)
    end
end
