class SolicitudesComponentesController < ApplicationController
  before_action :set_solicitud_componente, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @solicitudes_componentes = SolicitudComponente.all
    respond_with(@solicitudes_componentes)
  end

  def show
    respond_with(@solicitud_componente)
  end

  def new
    @solicitud_componente = SolicitudComponente.new
    respond_with(@solicitud_componente)
  end

  def edit
  end

  def create
    @solicitud_componente = SolicitudComponente.new(solicitud_componente_params)
    @solicitud_componente.save
    respond_with(@solicitud_componente)
  end

  def update
    @solicitud_componente.update(solicitud_componente_params)
    respond_with(@solicitud_componente)
  end

  def destroy
    @solicitud_componente.destroy
    respond_with(@solicitud_componente)
  end

  private
    def set_solicitud_componente
      @solicitud_componente = SolicitudComponente.find(params[:id])
    end

    def solicitud_componente_params
      params.require(:solicitud_componente).permit(:deposito_id, :deposito_id, :fecha, :nro_formulario, :fecha_baja, :estado)
    end
end
