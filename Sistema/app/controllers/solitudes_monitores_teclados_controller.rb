class SolitudesMonitoresTecladosController < ApplicationController
  before_action :set_solicitud_monitor_teclado, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @solitudes_monitores_teclados = SolicitudMonitorTeclado.all
    respond_with(@solitudes_monitores_teclados)
  end

  def show
    respond_with(@solicitud_monitor_teclado)
  end

  def new
    @solicitud_monitor_teclado = SolicitudMonitorTeclado.new
    respond_with(@solicitud_monitor_teclado)
  end

  def edit
  end

  def create
    @solicitud_monitor_teclado = SolicitudMonitorTeclado.new(solicitud_monitor_teclado_params)
    @solicitud_monitor_teclado.save
    respond_with(@solicitud_monitor_teclado)
  end

  def update
    @solicitud_monitor_teclado.update(solicitud_monitor_teclado_params)
    respond_with(@solicitud_monitor_teclado)
  end

  def destroy
    @solicitud_monitor_teclado.destroy
    respond_with(@solicitud_monitor_teclado)
  end

  private
    def set_solicitud_monitor_teclado
      @solicitud_monitor_teclado = SolicitudMonitorTeclado.find(params[:id])
    end

    def solicitud_monitor_teclado_params
      params.require(:solicitud_monitor_teclado).permit(:deposito_id, :deposito_id, :fecha, :nro_formulario)
    end
end
