class SolicitudesComponentesDetallesController < ApplicationController
  before_action :set_solicitud_componente_detalle, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @solicitudes_componentes_detalles = SolicitudComponenteDetalle.all
    respond_with(@solicitudes_componentes_detalles)
  end

  def show
    respond_with(@solicitud_componente_detalle)
  end

  def new
    @solicitud_componente_detalle = SolicitudComponenteDetalle.new
    respond_with(@solicitud_componente_detalle)
  end

  def edit
  end

  def create
    @solicitud_componente_detalle = SolicitudComponenteDetalle.new(solicitud_componente_detalle_params)
    @solicitud_componente_detalle.save
    respond_with(@solicitud_componente_detalle)
  end

  def update
    @solicitud_componente_detalle.update(solicitud_componente_detalle_params)
    respond_with(@solicitud_componente_detalle)
  end

  def destroy
    @solicitud_componente_detalle.destroy
    respond_with(@solicitud_componente_detalle)
  end

  private
    def set_solicitud_componente_detalle
      @solicitud_componente_detalle = SolicitudComponenteDetalle.find(params[:id])
    end

    def solicitud_componente_detalle_params
      params.require(:solicitud_componente_detalle).permit(:solicitud_componente_id, :componente_id, :cantidad_solicitada, :cantidad_entregada)
    end
end
