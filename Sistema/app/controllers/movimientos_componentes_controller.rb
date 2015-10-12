class MovimientosComponentesController < ApplicationController
  before_action :set_movimientos_componente, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @movimientos_componentes = MovimientosComponente.all
    respond_with(@movimientos_componentes)
  end

  def show
    respond_with(@movimientos_componente)
  end

  def new
    @movimientos_componente = MovimientosComponente.new
    respond_with(@movimientos_componente)
  end

  def edit
  end

  def create
    @movimientos_componente = MovimientosComponente.new(movimientos_componente_params)
    @movimientos_componente.save
    respond_with(@movimientos_componente)
  end

  def update
    @movimientos_componente.update(movimientos_componente_params)
    respond_with(@movimientos_componente)
  end

  def destroy
    @movimientos_componente.destroy
    respond_with(@movimientos_componente)
  end

  private
    def set_movimientos_componente
      @movimientos_componente = MovimientosComponente.find(params[:id])
    end

    def movimientos_componente_params
      params.require(:movimientos_componente).permit(:fecha, :cantidad_transferida)
    end
end
