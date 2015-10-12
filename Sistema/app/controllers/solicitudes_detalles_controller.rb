class SolicitudesDetallesController < ApplicationController
  before_action :set_solicitudes_detalle, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @solicitudes_detalles = SolicitudesDetalle.all
    respond_with(@solicitudes_detalles)
  end

  def show
    respond_with(@solicitudes_detalle)
  end

  def new
    @solicitudes_detalle = SolicitudesDetalle.new
    respond_with(@solicitudes_detalle)
  end

  def edit
  end

  def create
    @solicitudes_detalle = SolicitudesDetalle.new(solicitudes_detalle_params)
    @solicitudes_detalle.save
    respond_with(@solicitudes_detalle)
  end

  def update
    @solicitudes_detalle.update(solicitudes_detalle_params)
    respond_with(@solicitudes_detalle)
  end

  def destroy
    @solicitudes_detalle.destroy
    respond_with(@solicitudes_detalle)
  end

  private
    def set_solicitudes_detalle
      @solicitudes_detalle = SolicitudesDetalle.find(params[:id])
    end

    def solicitudes_detalle_params
      params.require(:solicitudes_detalle).permit(:cantidad_solicitada, :cantidad_entregada)
    end
end
