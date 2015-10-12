class OrdenesDeProduccionesDetallesController < ApplicationController
  before_action :set_ordenes_de_producciones_detalle, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @ordenes_de_producciones_detalles = OrdenesDeProduccionesDetalle.all
    respond_with(@ordenes_de_producciones_detalles)
  end

  def show
    respond_with(@ordenes_de_producciones_detalle)
  end

  def new
    @ordenes_de_producciones_detalle = OrdenesDeProduccionesDetalle.new
    respond_with(@ordenes_de_producciones_detalle)
  end

  def edit
  end

  def create
    @ordenes_de_producciones_detalle = OrdenesDeProduccionesDetalle.new(ordenes_de_producciones_detalle_params)
    @ordenes_de_producciones_detalle.save
    respond_with(@ordenes_de_producciones_detalle)
  end

  def update
    @ordenes_de_producciones_detalle.update(ordenes_de_producciones_detalle_params)
    respond_with(@ordenes_de_producciones_detalle)
  end

  def destroy
    @ordenes_de_producciones_detalle.destroy
    respond_with(@ordenes_de_producciones_detalle)
  end

  private
    def set_ordenes_de_producciones_detalle
      @ordenes_de_producciones_detalle = OrdenesDeProduccionesDetalle.find(params[:id])
    end

    def ordenes_de_producciones_detalle_params
      params.require(:ordenes_de_producciones_detalle).permit(:cantidad_solicitada, :cantidad_terminada)
    end
end
