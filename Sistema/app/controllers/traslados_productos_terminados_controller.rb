class TrasladosProductosTerminadosController < ApplicationController
  before_action :set_traslado_producto_terminado, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @traslados_productos_terminados = TrasladoProductoTerminado.all
    respond_with(@traslados_productos_terminados)
  end

  def show
    respond_with(@traslado_producto_terminado)
  end

  def new
    @traslado_producto_terminado = TrasladoProductoTerminado.new
    respond_with(@traslado_producto_terminado)
  end

  def edit
  end

  def create
    @traslado_producto_terminado = TrasladoProductoTerminado.new(traslado_producto_terminado_params)
    @traslado_producto_terminado.save
    respond_with(@traslado_producto_terminado)
  end

  def update
    @traslado_producto_terminado.update(traslado_producto_terminado_params)
    respond_with(@traslado_producto_terminado)
  end

  def destroy
    @traslado_producto_terminado.destroy
    respond_with(@traslado_producto_terminado)
  end

  private
    def set_traslado_producto_terminado
      @traslado_producto_terminado = TrasladoProductoTerminado.find(params[:id])
    end

    def traslado_producto_terminado_params
      params.require(:traslado_producto_terminado).permit(:orden_de_produccion_id, :deposito_id, :deposito_id, :nro_formulario, :fecha)
    end
end
