class StocksComponentesController < ApplicationController
  before_action :set_stocks_componente, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @stocks_componentes = StocksComponente.all
    respond_with(@stocks_componentes)
  end

  def show
    respond_with(@stocks_componente)
  end

  def new
    @stocks_componente = StocksComponente.new
    respond_with(@stocks_componente)
  end

  def edit
  end

  def create
    @stocks_componente = StocksComponente.new(stocks_componente_params)
    @stocks_componente.save
    respond_with(@stocks_componente)
  end

  def update
    @stocks_componente.update(stocks_componente_params)
    respond_with(@stocks_componente)
  end

  def destroy
    @stocks_componente.destroy
    respond_with(@stocks_componente)
  end

  private
    def set_stocks_componente
      @stocks_componente = StocksComponente.find(params[:id])
    end

    def stocks_componente_params
      params.require(:stocks_componente).permit(:cantidad_disponible)
    end
end
