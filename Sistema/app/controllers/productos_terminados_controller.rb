class ProductosTerminadosController < ApplicationController
  before_action :set_productos_terminado, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @productos_terminados = ProductosTerminado.all
    respond_with(@productos_terminados)
  end

  def show
    respond_with(@productos_terminado)
  end

  def new
    @productos_terminado = ProductosTerminado.new
    respond_with(@productos_terminado)
  end

  def edit
  end

  def create
    @productos_terminado = ProductosTerminado.new(productos_terminado_params)
    @productos_terminado.save
    respond_with(@productos_terminado)
  end

  def update
    @productos_terminado.update(productos_terminado_params)
    respond_with(@productos_terminado)
  end

  def destroy
    @productos_terminado.destroy
    respond_with(@productos_terminado)
  end

  private
    def set_productos_terminado
      @productos_terminado = ProductosTerminado.find(params[:id])
    end

    def productos_terminado_params
      params.require(:productos_terminado).permit(:nombre, :codigo, :descripcion, :cantidad_minima)
    end
end
