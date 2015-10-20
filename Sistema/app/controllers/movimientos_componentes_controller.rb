class MovimientosComponentesController < ApplicationController
  before_action :set_movimiento_componente, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @movimientos_componentes = MovimientoComponente.all
    respond_with(@movimientos_componentes)
  end

  def show
    respond_with(@movimiento_componente)
  end

  def new
    @movimiento_componente = MovimientoComponente.new
    respond_with(@movimiento_componente)
  end

  def edit
  end

  def create
    @movimiento_componente = MovimientoComponente.new(movimiento_componente_params)
    @movimiento_componente.save
    respond_with(@movimiento_componente)
  end

  def update
    @movimiento_componente.update(movimiento_componente_params)
    respond_with(@movimiento_componente)
  end

  def destroy
    @movimiento_componente.destroy
    respond_with(@movimiento_componente)
  end

  private
    def set_movimiento_componente
      @movimiento_componente = MovimientoComponente.find(params[:id])
    end

    def movimiento_componente_params
      params.require(:movimiento_componente).permit(:deposito_id, :componente_id, :tipo_de_movimiento_id, :fecha, :cantidad_transferida)
    end
end
