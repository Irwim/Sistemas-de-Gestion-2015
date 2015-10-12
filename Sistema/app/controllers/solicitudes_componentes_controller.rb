class SolicitudesComponentesController < ApplicationController
  before_action :set_solicitudes_componente, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @solicitudes_componentes = SolicitudesComponente.all
    respond_with(@solicitudes_componentes)
  end

  def show
    respond_with(@solicitudes_componente)
  end

  def new
    @solicitudes_componente = SolicitudesComponente.new
    respond_with(@solicitudes_componente)
  end

  def edit
  end

  def create
    @solicitudes_componente = SolicitudesComponente.new(solicitudes_componente_params)
    @solicitudes_componente.save
    respond_with(@solicitudes_componente)
  end

  def update
    @solicitudes_componente.update(solicitudes_componente_params)
    respond_with(@solicitudes_componente)
  end

  def destroy
    @solicitudes_componente.destroy
    respond_with(@solicitudes_componente)
  end

  private
    def set_solicitudes_componente
      @solicitudes_componente = SolicitudesComponente.find(params[:id])
    end

    def solicitudes_componente_params
      params.require(:solicitudes_componente).permit(:fecha, :numero_de_formulario, :estado_de_solicitud, :baja_de_solicitud)
    end
end
