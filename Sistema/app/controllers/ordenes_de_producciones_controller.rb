class OrdenesDeProduccionesController < ApplicationController
  before_action :set_ordenes_de_produccione, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @ordenes_de_producciones = OrdenesDeProduccione.all
    respond_with(@ordenes_de_producciones)
  end

  def show
    respond_with(@ordenes_de_produccione)
  end

  def new
    @ordenes_de_produccione = OrdenesDeProduccione.new
    respond_with(@ordenes_de_produccione)
  end

  def edit
  end

  def create
    @ordenes_de_produccione = OrdenesDeProduccione.new(ordenes_de_produccione_params)
    @ordenes_de_produccione.save
    respond_with(@ordenes_de_produccione)
  end

  def update
    @ordenes_de_produccione.update(ordenes_de_produccione_params)
    respond_with(@ordenes_de_produccione)
  end

  def destroy
    @ordenes_de_produccione.destroy
    respond_with(@ordenes_de_produccione)
  end

  private
    def set_ordenes_de_produccione
      @ordenes_de_produccione = OrdenesDeProduccione.find(params[:id])
    end

    def ordenes_de_produccione_params
      params.require(:ordenes_de_produccione).permit(:fecha, :numero_de_formulario)
    end
end
