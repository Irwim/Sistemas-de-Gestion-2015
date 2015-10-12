class FormulariosCpusProducidasDetallesController < ApplicationController
  before_action :set_formularios_cpus_producidas_detalle, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @formularios_cpus_producidas_detalles = FormulariosCpusProducidasDetalle.all
    respond_with(@formularios_cpus_producidas_detalles)
  end

  def show
    respond_with(@formularios_cpus_producidas_detalle)
  end

  def new
    @formularios_cpus_producidas_detalle = FormulariosCpusProducidasDetalle.new
    respond_with(@formularios_cpus_producidas_detalle)
  end

  def edit
  end

  def create
    @formularios_cpus_producidas_detalle = FormulariosCpusProducidasDetalle.new(formularios_cpus_producidas_detalle_params)
    @formularios_cpus_producidas_detalle.save
    respond_with(@formularios_cpus_producidas_detalle)
  end

  def update
    @formularios_cpus_producidas_detalle.update(formularios_cpus_producidas_detalle_params)
    respond_with(@formularios_cpus_producidas_detalle)
  end

  def destroy
    @formularios_cpus_producidas_detalle.destroy
    respond_with(@formularios_cpus_producidas_detalle)
  end

  private
    def set_formularios_cpus_producidas_detalle
      @formularios_cpus_producidas_detalle = FormulariosCpusProducidasDetalle.find(params[:id])
    end

    def formularios_cpus_producidas_detalle_params
      params.require(:formularios_cpus_producidas_detalle).permit(:cantidad_solicitada, :cantidad_terminada)
    end
end
