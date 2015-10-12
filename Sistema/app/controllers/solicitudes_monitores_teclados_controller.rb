class SolicitudesMonitoresTecladosController < ApplicationController
  before_action :set_solicitudes_monitores_teclado, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @solicitudes_monitores_teclados = SolicitudesMonitoresTeclado.all
    respond_with(@solicitudes_monitores_teclados)
  end

  def show
    respond_with(@solicitudes_monitores_teclado)
  end

  def new
    @solicitudes_monitores_teclado = SolicitudesMonitoresTeclado.new
    respond_with(@solicitudes_monitores_teclado)
  end

  def edit
  end

  def create
    @solicitudes_monitores_teclado = SolicitudesMonitoresTeclado.new(solicitudes_monitores_teclado_params)
    @solicitudes_monitores_teclado.save
    respond_with(@solicitudes_monitores_teclado)
  end

  def update
    @solicitudes_monitores_teclado.update(solicitudes_monitores_teclado_params)
    respond_with(@solicitudes_monitores_teclado)
  end

  def destroy
    @solicitudes_monitores_teclado.destroy
    respond_with(@solicitudes_monitores_teclado)
  end

  private
    def set_solicitudes_monitores_teclado
      @solicitudes_monitores_teclado = SolicitudesMonitoresTeclado.find(params[:id])
    end

    def solicitudes_monitores_teclado_params
      params.require(:solicitudes_monitores_teclado).permit(:fecha, :numero_de_formulario)
    end
end
