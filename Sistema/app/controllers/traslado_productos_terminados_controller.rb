class TrasladoProductosTerminadosController < ApplicationController
  before_action :set_traslado_productos_terminado, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @traslado_productos_terminados = TrasladoProductosTerminado.all
    respond_with(@traslado_productos_terminados)
  end

  def show
    respond_with(@traslado_productos_terminado)
  end

  def new
    @traslado_productos_terminado = TrasladoProductosTerminado.new
    respond_with(@traslado_productos_terminado)
  end

  def edit
  end

  def create
    @traslado_productos_terminado = TrasladoProductosTerminado.new(traslado_productos_terminado_params)
    @traslado_productos_terminado.save
    respond_with(@traslado_productos_terminado)
  end

  def update
    @traslado_productos_terminado.update(traslado_productos_terminado_params)
    respond_with(@traslado_productos_terminado)
  end

  def destroy
    @traslado_productos_terminado.destroy
    respond_with(@traslado_productos_terminado)
  end

  private
    def set_traslado_productos_terminado
      @traslado_productos_terminado = TrasladoProductosTerminado.find(params[:id])
    end

    def traslado_productos_terminado_params
      params.require(:traslado_productos_terminado).permit(:fecha, :numero_de_formulario)
    end
end
