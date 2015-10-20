class ProductosTerminadosController < ApplicationController
  before_action :set_producto_terminado, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @productos_terminados = ProductoTerminado.all
    respond_with(@productos_terminados)
  end

  def show
    respond_with(@producto_terminado)
  end

  def new
    @producto_terminado = ProductoTerminado.new
    respond_with(@producto_terminado)
  end

  def edit
  end

  def create
    @producto_terminado = ProductoTerminado.new(producto_terminado_params)
    @producto_terminado.save
    respond_with(@producto_terminado)
  end

  def update
    @producto_terminado.update(producto_terminado_params)
    respond_with(@producto_terminado)
  end

  def destroy
    @producto_terminado.destroy
    respond_with(@producto_terminado)
  end

  private
    def set_producto_terminado
      @producto_terminado = ProductoTerminado.find(params[:id])
    end

    def producto_terminado_params
      params.require(:producto_terminado).permit(:modelo_id, :categoria_producto_id, :codigo, :cantidad_minima, :descripcion)
    end
end
