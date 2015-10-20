class OrdenesDeProduccionController < ApplicationController
  before_action :set_orden_de_produccion, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @ordenes_de_produccion = OrdenDeProduccion.all
    respond_with(@ordenes_de_produccion)
  end

  def show
    respond_with(@orden_de_produccion)
  end

  def new
    @orden_de_produccion = OrdenDeProduccion.new
    respond_with(@orden_de_produccion)
  end

  def edit
  end

  def create
    @orden_de_produccion = OrdenDeProduccion.new(orden_de_produccion_params)
    @orden_de_produccion.save
    respond_with(@orden_de_produccion)
  end

  def update
    @orden_de_produccion.update(orden_de_produccion_params)
    respond_with(@orden_de_produccion)
  end

  def destroy
    @orden_de_produccion.destroy
    respond_with(@orden_de_produccion)
  end

  private
    def set_orden_de_produccion
      @orden_de_produccion = OrdenDeProduccion.find(params[:id])
    end

    def orden_de_produccion_params
      params.require(:orden_de_produccion).permit(:fecha, :nro_formulario)
    end
end
