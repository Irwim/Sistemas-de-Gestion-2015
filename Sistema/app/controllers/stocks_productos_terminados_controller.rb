class StocksProductosTerminadosController < ApplicationController
  before_action :set_stock_producto_terminado, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @stocks_productos_terminados = StockProductoTerminado.all
    respond_with(@stocks_productos_terminados)
  end

  def show
    respond_with(@stock_producto_terminado)
  end

  def new
    @stock_producto_terminado = StockProductoTerminado.new
    respond_with(@stock_producto_terminado)
  end

  def edit
  end

  def create
    @stock_producto_terminado = StockProductoTerminado.new(stock_producto_terminado_params)
    @stock_producto_terminado.save
    respond_with(@stock_producto_terminado)
  end

  def update
    @stock_producto_terminado.update(stock_producto_terminado_params)
    respond_with(@stock_producto_terminado)
  end

  def destroy
    @stock_producto_terminado.destroy
    respond_with(@stock_producto_terminado)
  end

  private
    def set_stock_producto_terminado
      @stock_producto_terminado = StockProductoTerminado.find(params[:id])
    end

    def stock_producto_terminado_params
      params.require(:stock_producto_terminado).permit(:deposito_id, :producto_terminado_id, :cantidad_disponible)
    end
end
