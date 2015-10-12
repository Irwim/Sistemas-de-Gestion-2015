class StocksProductosTerminadosController < ApplicationController
  before_action :set_stocks_productos_terminado, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @stocks_productos_terminados = StocksProductosTerminado.all
    respond_with(@stocks_productos_terminados)
  end

  def show
    respond_with(@stocks_productos_terminado)
  end

  def new
    @stocks_productos_terminado = StocksProductosTerminado.new
    respond_with(@stocks_productos_terminado)
  end

  def edit
  end

  def create
    @stocks_productos_terminado = StocksProductosTerminado.new(stocks_productos_terminado_params)
    @stocks_productos_terminado.save
    respond_with(@stocks_productos_terminado)
  end

  def update
    @stocks_productos_terminado.update(stocks_productos_terminado_params)
    respond_with(@stocks_productos_terminado)
  end

  def destroy
    @stocks_productos_terminado.destroy
    respond_with(@stocks_productos_terminado)
  end

  private
    def set_stocks_productos_terminado
      @stocks_productos_terminado = StocksProductosTerminado.find(params[:id])
    end

    def stocks_productos_terminado_params
      params.require(:stocks_productos_terminado).permit(:cantidad_disponible)
    end
end
