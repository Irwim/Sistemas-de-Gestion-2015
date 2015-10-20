class StocksComponentesController < ApplicationController
  before_action :set_stock_componente, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @stocks_componentes = StockComponente.all
    respond_with(@stocks_componentes)
  end

  def show
    respond_with(@stock_componente)
  end

  def new
    @stock_componente = StockComponente.new
    respond_with(@stock_componente)
  end

  def edit
  end

  def create
    @stock_componente = StockComponente.new(stock_componente_params)
    @stock_componente.save
    respond_with(@stock_componente)
  end

  def update
    @stock_componente.update(stock_componente_params)
    respond_with(@stock_componente)
  end

  def destroy
    @stock_componente.destroy
    respond_with(@stock_componente)
  end

  private
    def set_stock_componente
      @stock_componente = StockComponente.find(params[:id])
    end

    def stock_componente_params
      params.require(:stock_componente).permit(:deposito_id, :componente_id, :cantidad_disponible)
    end
end
