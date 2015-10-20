class SolicitudesDetallesController < ApplicationController
  before_action :set_solicitud_detalle, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @solicitudes_detalles = SolicitudDetalle.all
    respond_with(@solicitudes_detalles)
  end

  def show
    respond_with(@solicitud_detalle)
  end

  def new
    @solicitud_detalle = SolicitudDetalle.new
    respond_with(@solicitud_detalle)
  end

  def edit
  end

  def create
    @solicitud_detalle = SolicitudDetalle.new(solicitud_detalle_params)
    @solicitud_detalle.save
    respond_with(@solicitud_detalle)
  end

  def update
    @solicitud_detalle.update(solicitud_detalle_params)
    respond_with(@solicitud_detalle)
  end

  def destroy
    @solicitud_detalle.destroy
    respond_with(@solicitud_detalle)
  end

  private
    def set_solicitud_detalle
      @solicitud_detalle = SolicitudDetalle.find(params[:id])
    end

    def solicitud_detalle_params
      params.require(:solicitud_detalle).permit(:solicitud_monitor_teclado_id, :componente_id, :cantidad_solicitada, :cantidad_entregada)
    end
end
