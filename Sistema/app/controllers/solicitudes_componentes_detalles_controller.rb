class SolicitudesComponentesDetallesController < ApplicationController
  before_action :set_solicitudes_componentes_detalle, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @solicitudes_componentes_detalles = SolicitudesComponentesDetalle.all
    respond_with(@solicitudes_componentes_detalles)
  end

  def show
    respond_with(@solicitudes_componentes_detalle)
  end

  def new
    @solicitudes_componentes_detalle = SolicitudesComponentesDetalle.new
    respond_with(@solicitudes_componentes_detalle)
  end

  def edit
  end

  def create
    @solicitudes_componentes_detalle = SolicitudesComponentesDetalle.new(solicitudes_componentes_detalle_params)
    @solicitudes_componentes_detalle.save
    respond_with(@solicitudes_componentes_detalle)
  end

  def update
    @solicitudes_componentes_detalle.update(solicitudes_componentes_detalle_params)
    respond_with(@solicitudes_componentes_detalle)
  end

  def destroy
    @solicitudes_componentes_detalle.destroy
    respond_with(@solicitudes_componentes_detalle)
  end

  private
    def set_solicitudes_componentes_detalle
      @solicitudes_componentes_detalle = SolicitudesComponentesDetalle.find(params[:id])
    end

    def solicitudes_componentes_detalle_params
      params.require(:solicitudes_componentes_detalle).permit(:cantidad_solicitada, :cantidad_entregada)
    end
end
