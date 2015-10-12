class FormulariosCpusProducidasController < ApplicationController
  before_action :set_formularios_cpus_producida, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @formularios_cpus_producidas = FormulariosCpusProducida.all
    respond_with(@formularios_cpus_producidas)
  end

  def show
    respond_with(@formularios_cpus_producida)
  end

  def new
    @formularios_cpus_producida = FormulariosCpusProducida.new
    respond_with(@formularios_cpus_producida)
  end

  def edit
  end

  def create
    @formularios_cpus_producida = FormulariosCpusProducida.new(formularios_cpus_producida_params)
    @formularios_cpus_producida.save
    respond_with(@formularios_cpus_producida)
  end

  def update
    @formularios_cpus_producida.update(formularios_cpus_producida_params)
    respond_with(@formularios_cpus_producida)
  end

  def destroy
    @formularios_cpus_producida.destroy
    respond_with(@formularios_cpus_producida)
  end

  private
    def set_formularios_cpus_producida
      @formularios_cpus_producida = FormulariosCpusProducida.find(params[:id])
    end

    def formularios_cpus_producida_params
      params.require(:formularios_cpus_producida).permit(:orden, :numero_de_formulario)
    end
end
